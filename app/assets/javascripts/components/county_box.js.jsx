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
      {g} Mgal/d
    </h1>;
  },

  changeReduction: function (sector, e) {
    var newValue = e.target.value / 100;
    var changes = {};
    changes[sector + '_reduction'] = newValue;
    $(document).trigger('target_usage:change', {id: this.targetUsage().id, changes: changes});
  },

  setReduction: function (sector, e) {
    var newValue = e.target.value / 100;
    var changes = {};
    changes[sector + '_reduction'] = newValue;
    $(document).trigger('target_usage:set', {id: this.targetUsage().id, changes: changes});
  },

  normalizeReduction: function (sector) {
    return (parseFloat(this.targetUsage()[sector + '_reduction']) * 100).toFixed(0);
  },

  targetUsage: function () {
    return this.state.cursors.targetUsages[this.state.cursors.activeIndex];
  },

  render: function () {
    if (this.targetUsage() != null) {
      var sliders = _.map(['domestic', 'industrial', 'agriculture', 'energy'], (sector) => {
        var changeHandler = this.changeReduction.bind(this, sector);
        var setHandler = this.setReduction.bind(this, sector);
        return <div key={sector} className="input">
          <label>{_.capitalize(sector)} Reduction</label>
          <input id={sector} name={sector} type="range"
            onChange={changeHandler}
            onMouseUp={setHandler}
            value={this.normalizeReduction(sector)} />
        </div>;
      });

      return <div className="county-box">
        <h3>
          {this.targetUsage().county_name}
        </h3>
        {this.balance()}
        {sliders}
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
