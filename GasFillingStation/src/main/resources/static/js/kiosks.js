app.controller("kiosks",function($scope){
  $scope.lists = [];
  $scope.kioskLogs = [];
  $scope.kiosksShow = "main";
  for (var i = 0; i < 23; i++) {
    $scope.lists.push(i);
    $scope.kioskLogs.push(i);
  }
  
  $scope.changePage = function(page) {
    $scope.kiosksShow = page;
  }
  $scope.clickTag = function(eve) {
    $(eve.currentTarget).find('input').focus();
  }
  
  var canvas = $("#myChart");
  canvas.attr("width", parseInt( canvas.parent().css('width'))-20);   
   
  //Get context with jQuery - using jQuery's .get() method.
  var ctx = canvas.get(0).getContext("2d");
  //This will get the first returned node in the jQuery collection.
  var myNewChart = new Chart(ctx);

  var data = {
      labels : ["January","February","March","April","May","June","July"],
      datasets : [
        {
          fillColor : "rgba(0,0,0,0)",
          strokeColor : "rgba(220,220,220,1)",
          pointColor : "rgba(220,220,220,1)",
          pointStrokeColor : "#fff",
          data : [65,59,90,81,56,55,40]
        },
        {
          fillColor : "rgba(0,0,0,0)",
          strokeColor : "rgba(151,187,205,1)",
          pointColor : "rgba(0,0,0,0)",
          pointStrokeColor : "#fff",
          data : [28,48,40,19,96,27,100]
        }
      ]
    }
  var options = {
      
      //Boolean - If we show the scale above the chart data     
      scaleOverlay : false,
      
      //Boolean - If we want to override with a hard coded scale
      scaleOverride : false,
      
      //** Required if scaleOverride is true **
      //Number - The number of steps in a hard coded scale
      scaleSteps : null,
      //Number - The value jump in the hard coded scale
      scaleStepWidth : null,
      //Number - The scale starting value
      scaleStartValue : null,

      //String - Colour of the scale line 
      scaleLineColor : "rgba(0,0,0,.1)",
      
      //Number - Pixel width of the scale line  
      scaleLineWidth : 1,

      //Boolean - Whether to show labels on the scale 
      scaleShowLabels : true,
      
      //Interpolated JS string - can access value
      scaleLabel : "<%=value%>",
      
      //String - Scale label font declaration for the scale label
      scaleFontFamily : "'Arial'",
      
      //Number - Scale label font size in pixels  
      scaleFontSize : 12,
      
      //String - Scale label font weight style  
      scaleFontStyle : "normal",
      
      //String - Scale label font colour  
      scaleFontColor : "#666",  
        
      ///Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines : true,
      
      //String - Colour of the grid lines
      scaleGridLineColor : "rgba(0,0,0,.05)",
      
      //Number - Width of the grid lines
      scaleGridLineWidth : 1, 
      
      //Boolean - Whether the line is curved between points
      bezierCurve : true,
      
      //Boolean - Whether to show a dot for each point
      pointDot : false,
      
      //Number - Radius of each point dot in pixels
      pointDotRadius : 0,
      
      //Number - Pixel width of point dot stroke
      pointDotStrokeWidth : 1,
      
      //Boolean - Whether to show a stroke for datasets
      datasetStroke : true,
      
      //Number - Pixel width of dataset stroke
      datasetStrokeWidth : 2,
      
      //Boolean - Whether to fill the dataset with a colour
      datasetFill : true,
      
      //Boolean - Whether to animate the chart
      animation : true,

      //Number - Number of animation steps
      animationSteps : 60,
      
      //String - Animation easing effect
      animationEasing : "easeOutQuart",

      //Function - Fires when the animation is complete
      onAnimationComplete : function() {
        
      }
      
    }

  new Chart(ctx).Line(data,options);
})