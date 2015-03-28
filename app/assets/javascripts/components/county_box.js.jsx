var CountyBox = React.createClass({
  mixins: [stateTree.mixin],
  cursors: {
    targetUsage: ['activeTargetUsage']
  },

  render: function () {
    if (this.state.cursors.targetUsage != null) {
      return <div className="county-box">
        {this.state.cursors.targetUsage.county_name}
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
