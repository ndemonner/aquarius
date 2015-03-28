var CaMap = React.createClass({
  mixins: [stateTree.mixin],
  
  componentDidMount: function() {
    this.createMap();
    this.updateMap();
  },
  
  componentDidUpdate: function() {
    this.updateMap();
  },
  
  createMap: function(){
    _this = this
    var width = this.props.width
    var height = this.props.height
    
    var projection = d3.geo.mercator()
			              .scale(1000 * 2)
			              .center([-120, 36])
			              .translate([width/2, height/2]);

    var path = d3.geo.path()
		           .projection(projection);

	  var svg = d3.select(".ca-map").append("svg")
		          .attr("width", width)
		          .attr("height", height);

	  d3.json("/assets/ca_topology.json", function(error, ca){

      svg.append("path")
			   .datum(topojson.feature(ca, ca.objects.subunits))
			   .attr("class", "land")
			   .attr("d", path);

		  svg.selectAll(".subunit")
			   .data(topojson.feature(ca, ca.objects.subunits).features)
			   .enter().append("path")
			   .attr("class", function(d) { return "subunit " + _.snakeCase(d.properties.fullName); })
			   .attr("d", path)
			   .on("mouseover", function(d){ //tooltip
			     div.transition()
				      .duration(200)
					    .style("opacity", .9);
				   div.html(d.properties.fullName)
					    .style("left", (d3.event.pageX) + 10 + "px")
					    .style("top", (d3.event.pageY - 30) + "px"); 
			   })
			   .on("mouseout", function(d) { 
				   div.transition()
					    .duration(500)
					    .style("opacity", 0.0);
			   })
         .on("click", function(d) {
           _this.changeCounty(d.properties.fullName)
         });

		//exterior border
		  svg.append("path")
			   .datum(topojson.mesh(ca, ca.objects.subunits, function(a, b) { return a === b;}))
			   .attr("d", path)
			   .attr("class", "exterior-boundary");

		//tooltop declaration
		  var div = d3.select(".ca-map").append("div")
			            .attr("class", "tooltip")
			            .style("opacity", 0);
	  });

  },
  
  cursors: {
    stateTarget: ['state_target']
  },
  
  findUsage: function(countyName) {
    return _.findIndex(this.state.cursors.stateTarget.target_usages, (targetUsage) => { return targetUsage.county_name === countyName });
  },
  
  updateMap: function() {
    _this = this;
    _.each(this.state.cursors.stateTarget.target_usages, function (usage) {
      var el = d3.select("." + _.snakeCase(usage.county_name));
      var g = parseFloat(usage.balance).toFixed(3);
      if (g < 0) {
        el.style('fill', 'rgb(231, 76, 60)');
      } else {
        el.style('fill', 'rgb(46, 204, 113)');
      }
    });
  },
  
  changeCounty: function (countyName, e) {
    var targetUsage = this.findUsage(countyName);
    $(document).trigger('target_usage:activate', targetUsage);
  },

  render: function () {
    return <div className="ca-map">
    </div>;
  }
});
