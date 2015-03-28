var Home = React.createClass({
  mixins: [stateTree.mixin],
  cursors: {
    stateTarget: ['state_target'],
    activeTargetUsage: ['activeTargetUsage']
  },

  componentWillMount: function () {
    $(document).trigger('state_target:load', this.props.state_target);
  },

  setReduction: function (e) {
    $(document).trigger('state_reduction:change', e.target.value)
  },

  changeCounty: function (targetUsage, e) {
    e.preventDefault();
    $(document).trigger('target_usage:activate', targetUsage);
  },

  render: function () {
    var counties = _.map(this.state.cursors.stateTarget.target_usages, (targetUsage) => {
      var handler = this.changeCounty.bind(this, targetUsage);
      return <a href="#" key={targetUsage.id} onClick={handler}>{targetUsage.county_name}</a>;
    });
    return <div className="app-container">
      <div className="left-side">
        <div className="state-box">
          <h3>{this.state.cursors.stateTarget.name}</h3>
          <div className="input">
            <label>Target Reduction</label>
            <input type="text" onChange={this.setReduction} />
          </div>
          <table>
            <thead>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>
        <CountyBox />
      </div>
      <div className="right-side">
        <div className="county-chooser">
          {counties}
        </div>
      </div>
    </div>;
  }
});
