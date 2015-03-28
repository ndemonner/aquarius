var Home = React.createClass({
  mixins: [stateTree.mixin],
  cursors: {
    stateTarget: ['state_target']
  },

  setReduction: function (e) {
    $(document).trigger('state_reduction:change', e.target.value)
  },

  render: function () {
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
        <div className="county-box">
        </div>
      </div>
      <div className="right-side">
        <div className="county-chooser">

        </div>
      </div>
    </div>;
  }
});
