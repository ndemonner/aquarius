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
          <table>
            <tbody>
              <tr>
                <td>{this.state.cursors.stateTarget.year} Historical Projection</td>
                <td>{parseFloat(this.state.cursors.stateTarget.total_future_usage).toFixed(3)} Mgal/d</td>
              </tr>
              <tr>
                <td>{this.state.cursors.stateTarget.year} Mandated Projection</td>
                <td>{parseFloat(this.state.cursors.stateTarget.total_goal_usage).toFixed(3)} Mgal/d</td>
              </tr>
              <tr>
                <td>{this.state.cursors.stateTarget.year} Estimated Projection</td>
                <td>{parseFloat(this.state.cursors.stateTarget.total_expected_usage).toFixed(3)} Mgal/d</td>
              </tr>
            </tbody>
          </table>
          <div className="input">
            <label>State Mandated Reduction</label>
            <input type="range" onChange={this.changeReduction} onMouseUp={this.setReduction} value={this.normalizeReduction()} />
          </div>
          <h4>
            Reduction is currently set to {this.normalizeReduction()}%
          </h4>
        </div>
        <CountyBox />
      </div>
      <div className="right-side">
        <CaMap height="600" width="400" />
      </div>
    </div>;
  }
});
