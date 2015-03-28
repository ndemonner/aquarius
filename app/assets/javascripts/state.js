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
  activeCounty: null
}, {
  mixins: [React.addons.PureRenderMixin],
  shiftReferences: true
});

$(document).on('state_reduction:change', function (e, reduction) {
  stateTree.select('state_target').set('reduction', reduction);
  var xhr = $.ajax({
    type: 'PATCH',
    url: '/state_targets/' + stateTree.select('state_target').get('id'),
    data: JSON.stringify({reduction: reduction}),
    contentType: 'application/json'
  });

  xhr.done(function (newTree) {
    stateTree.set('state_target', newTree);
  });

  xhr.fail(function (err) {
    throw err.responseText;
  })
});
