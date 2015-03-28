stateTree = new Baobab({
  state_target: {
    id: null,
    name: null,
    reduction: null,
    year: null,
    total_future_usage: null,
    total_goal_usage: null,
    total_expected_usage: null,
    target_usages: [],
  },
  activeTargetUsage: null
}, {
  mixins: [React.addons.PureRenderMixin],
  shiftReferences: true
});

$(document).on('state_target:load', function (e, data) {
  stateTree.set('state_target', data);
  stateTree.set('activeTargetUsage', data.target_usages[0]);
});

$(document).on('target_usage:activate', function (e, data) {
  stateTree.set('activeTargetUsage', data);
});

$(document).on('state_reduction:change', function (e, reduction) {
  stateTree.select('state_target').set('reduction', reduction);
});

$(document).on('state_reduction:set', function (e, reduction) {
  stateTree.select('state_target').set('reduction', reduction);
  var xhr = $.ajax({
    type: 'PATCH',
    url: '/state_targets/' + stateTree.select('state_target').get('id'),
    data: JSON.stringify({state_target: {reduction: reduction}}),
    contentType: 'application/json'
  });

  xhr.done(function (newTree) {
    stateTree.set('state_target', newTree);
  });

  xhr.fail(function (err) {
    throw err.responseText;
  })
});

$(document).on('target_usage:change', function (e, data) {
  // data => { id: 1, changes: {} }
  stateTree.select('state_target', 'target_usages').apply(function (current) {
    _.assign(_.findWhere(current, {id: data.id}), data.changes);
    return current;
  });
  var xhr = $.ajax({
    type: 'PATCH',
    url: '/target_usages/' + data.id,
    data: JSON.stringify({target_usage: changes}),
    contentType: 'application/json'
  });

  xhr.done(function (newTree) {
    stateTree.set('state_target', newTree);
  });

  xhr.fail(function (err) {
    throw err.responseText;
  })
});
