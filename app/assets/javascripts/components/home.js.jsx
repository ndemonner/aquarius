var Home = React.createClass({
  mixins: [stateTree.mixin],
  cursors: {
    stateTarget: ['state_target']
  },

  componentWillMount: function () {
    $(document).trigger('state_target:load', this.props.state_target);
  },

  changeReduction: function (e) {
    var newValue = e.target.value / 100;
    $(document).trigger('state_reduction:change', newValue);
  },

  setReduction: function (e) {
    var newValue = e.target.value / 100;
    $(document).trigger('state_reduction:set', newValue);
  },

  changeCounty: function (idx, e) {
    e.preventDefault();
    $(document).trigger('target_usage:activate', idx);
  },

  normalizeReduction: function () {
    return (parseFloat(this.state.cursors.stateTarget.reduction) * 100).toFixed(0);
  },

  render: function () {
    var counties = _.map(this.state.cursors.stateTarget.target_usages, (targetUsage, idx) => {
      var handler = this.changeCounty.bind(this, idx);
      return <a href="#" key={targetUsage.id} onClick={handler}>{targetUsage.county_name}</a>;
    });
    return <div className="app-container">
      <div className="left-side">
        <div className="state-box">
          <h3>{this.state.cursors.stateTarget.name}</h3>
          <div className="input">
            <label>Target Reduction</label>
            <input type="range" onChange={this.changeReduction} onMouseUp={this.setReduction} value={this.normalizeReduction()} />
          </div>
          <h4>
            Reduction is currently set to {this.normalizeReduction()}%
          </h4>
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
