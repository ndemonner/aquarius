var CountyBox = React.createClass({
  mixins: [stateTree.mixin],
  cursors: {
    targetUsage: ['activeTargetUsage']
  },

  balance: function (raw) {
    var g = parseFloat(raw).toFixed(3);
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

  render: function () {
    if (this.state.cursors.targetUsage != null) {
      return <div className="county-box">
        <h3>
          {this.state.cursors.targetUsage.county_name}
        </h3>
        {this.balance(this.state.cursors.targetUsage.balance)}
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
