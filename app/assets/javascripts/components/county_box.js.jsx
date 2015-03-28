var CountyBox = React.createClass({
  mixins: [stateTree.mixin],
  cursors: {
    targetUsages: ['state_target', 'target_usages'],
    activeIndex: ['activeTargetUsage']
  },

  balance: function () {
    var g = parseFloat(this.targetUsage().balance).toFixed(3);
    var type = 'normal';
    if (g < 0) {
      type = 'deficit';
    } else if (g > 0) {
      type = 'surplus';
    }
    return <h1 className={"balance -" + type}>
      {g}
    </h1>;
  },

  targetUsage: function () {
    console.log(this.state.cursors.activeIndex)
    return this.state.cursors.targetUsages[this.state.cursors.activeIndex];
  },

  render: function () {
    if (this.targetUsage() != null) {
      return <div className="county-box">
        <h3>
          {this.targetUsage().county_name}
        </h3>
        {this.balance()}
      </div>
    } else {
      return <div className="county-box">
        <p>
          Loading...
        </p>
      </div>
    }
  }
});
