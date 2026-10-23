$(function() {
    "use strict";

	
// chart 1

  var ctx = document.getElementById("chart1").getContext('2d');
   
  var gradientStroke1 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke1.addColorStop(0, '#6078ea');  
      gradientStroke1.addColorStop(1, '#17c5ea'); 
   
  var gradientStroke2 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke2.addColorStop(0, '#ff8359');
      gradientStroke2.addColorStop(1, '#ffdf40');

      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'],
          datasets: [{
            label: 'Sales',
            data: [6, 20, 14, 12, 17, 8, 10],
            backgroundColor: "transparent",
            borderColor: "#0d6efd",
            pointRadius: "0",
            borderWidth: 4,
            tension: 0.4,
          }, {
            label: 'Visits',
            data: [5, 30, 16, 23, 8, 14, 11],
            backgroundColor: "transparent",
            borderColor: "#f41127",
            pointRadius: "0",
            borderWidth: 4,
            tension: 0.4,
          }]
        },
        options: {
          maintainAspectRatio: false,
          legend: {
            display: true,
            labels: {
              fontColor: '#585757',
              boxWidth: 40
            }
          },
          tooltips: {
            enabled: false
          },
          scales: {
            xAxes: [{
              ticks: {
                beginAtZero: true,
                fontColor: '#585757'
              },
              gridLines: {
                display: true,
                color: "rgba(0, 0, 0, 0.07)"
              },
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                fontColor: '#585757'
              },
              gridLines: {
                display: true,
                color: "rgba(0, 0, 0, 0.07)"
              },
            }]
          }
        }
      });
	  
	 
// chart 2

 var ctx = document.getElementById("chart2").getContext('2d');

  var gradientStroke1 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke1.addColorStop(0, '#fc4a1a');
      gradientStroke1.addColorStop(1, '#f7b733');

  var gradientStroke2 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke2.addColorStop(0, '#008cff');
      gradientStroke2.addColorStop(1, '#8e54e9');


  var gradientStroke3 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke3.addColorStop(0, '#ee0979');
      gradientStroke3.addColorStop(1, '#ff6a00');
	  
	var gradientStroke4 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke4.addColorStop(0, '#42e695');
      gradientStroke4.addColorStop(1, '#3bb2b8');

      var myChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
          labels: ["Jeans", "T-Shirts", "Shoes", "Lingerie"],
          datasets: [{
            backgroundColor: [
              gradientStroke1,
              gradientStroke2,
              gradientStroke3,
              gradientStroke4
            ],
            hoverBackgroundColor: [
              gradientStroke1,
              gradientStroke2,
              gradientStroke3,
              gradientStroke4
            ],
            data: [65, 500, 55, 25],
			borderWidth: [1, 1, 1, 1]
          }]
        },
        options: {
          maintainAspectRatio: false,
          cutout: 100,
          plugins: {
          legend: {
              display: false,
          }
      }
          
      }
      });




// chart3

var ctx = document.getElementById('chart3').getContext('2d');

var gradientStroke1 = ctx.createLinearGradient(0, 0, 0, 300);
    gradientStroke1.addColorStop(0, '#00b09b');
    gradientStroke1.addColorStop(1, 'rgba(0 176 155 / 45%)');

    var myChart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        datasets: [{
          label: 'Revenue',
          data: [3, 30, 10, 10, 22, 12, 5],
          pointBorderWidth: 0,
          pointHoverBackgroundColor: '#15ca20',
          backgroundColor: '#15ca20',
          fill: {
            target: 'origin',
            above: 'rgb(20 201 32 / 15%)',   // Area will be red above the origin
            below: 'rgb(20 201 32 / 15%)'    // And blue below the origin
            },
          borderColor: '#15ca20',
          pointRadius: "0",
          borderWidth: 3,
          tension: 0.4,
        }]
      },
      options: {
    maintainAspectRatio: false,
      plugins: {
        legend: {
            display: false,
        },
      },
        tooltips: {
            displayColors:false,	
            mode: 'nearest',
            intersect: false,
            position: 'nearest',
            xPadding: 10,
            yPadding: 10,
            caretPadding: 10
          },
          scales: {
            x: {
              stacked: false,
              beginAtZero: true,
              display: false,
            },
            y: {
              stacked: false,
              beginAtZero: true,
              display: false,
            }
            }
       }
    });


   
  $('#chart4').sparkline([5,8,7,10,9,10,8,6,4,6,8,7,6,8,9,10,8,6,4,5,8,7,10,9,5,8,7,9,5,4], {
      type: 'bar',
      height: '30',
      barWidth: '2',
      resize: true,
      barSpacing: '3',
      barColor: '#008cff'
  });


  $('#chart5').sparkline([5,8,7,10,9,10,8,6,4,6,8,7,6,8,9,10,8,6,4,5,8,7,10,9,5,8,7,9,5,4], {
    type: 'bar',
    height: '30',
    barWidth: '2',
    resize: true,
    barSpacing: '3',
    barColor: '#fd3550'
});


$('#chart6').sparkline([5,8,7,10,9,10,8,6,4,6,8,7,6,8,9,10,8,6,4,5,8,7,10,9,5,8,7,9,5,4], {
  type: 'bar',
  height: '30',
  barWidth: '2',
  resize: true,
  barSpacing: '3',
  barColor: '#009688'
});

$('#chart7').sparkline([5,8,7,10,9,10,8,6,4,6,8,7,6,8,9,10,8,6,4,5,8,7,10,9,5,8,7,9,5,4], {
  type: 'bar',
  height: '30',
  barWidth: '2',
  resize: true,
  barSpacing: '3',
  barColor: '#ffc107'
});



// easy pie chart 
	
$('.chart8').easyPieChart({
  easing: 'easeOutBounce',
  barColor : '#008cff',
  lineWidth: 8,
  trackColor : 'rgba(0, 0, 0, 0.12)',
  scaleColor: false,
  onStep: function(from, to, percent) {
    $(this.el).find('.w_percent').text(Math.round(percent));
  }
 });	

	
 $('.chart9').easyPieChart({
  easing: 'easeOutBounce',
  barColor : '#fd3550',
  lineWidth: 8,
  trackColor : 'rgba(0, 0, 0, 0.12)',
  scaleColor: false,
  onStep: function(from, to, percent) {
    $(this.el).find('.w_percent').text(Math.round(percent));
  }
 });	

	
 $('.chart10').easyPieChart({
  easing: 'easeOutBounce',
  barColor : '#15ca20',
  lineWidth: 8,
  trackColor : 'rgba(0, 0, 0, 0.12)',
  scaleColor: false,
  onStep: function(from, to, percent) {
    $(this.el).find('.w_percent').text(Math.round(percent));
  }
 });	

	
 $('.chart11').easyPieChart({
  easing: 'easeOutBounce',
  barColor : '#ffc107',
  lineWidth: 8,
  trackColor : 'rgba(0, 0, 0, 0.12)',
  scaleColor: false,
  onStep: function(from, to, percent) {
    $(this.el).find('.w_percent').text(Math.round(percent));
  }
 });	

	
 $('.chart12').easyPieChart({
  easing: 'easeOutBounce',
  barColor : '#0dcaf0',
  lineWidth: 8,
  trackColor : 'rgba(0, 0, 0, 0.12)',
  scaleColor: false,
  onStep: function(from, to, percent) {
    $(this.el).find('.w_percent').text(Math.round(percent));
  }
 });	

 	
 
 $('.chart13').easyPieChart({
  easing: 'easeOutBounce',
  barColor : '#9c27b0',
  lineWidth: 8,
  trackColor : 'rgba(0, 0, 0, 0.12)',
  scaleColor: false,
  onStep: function(from, to, percent) {
    $(this.el).find('.w_percent').text(Math.round(percent));
  }
 });	


// worl map

jQuery('#geographic-map-2').vectorMap(
{
    map: 'world_mill_en',
    backgroundColor: 'transparent',
    borderColor: '#818181',
    borderOpacity: 0.25,
    borderWidth: 1,
    zoomOnScroll: false,
    color: '#009efb',
    regionStyle : {
        initial : {
          fill : '#008cff'
        }
      },
    markerStyle: {
      initial: {
				r: 9,
				'fill': '#fff',
				'fill-opacity':1,
				'stroke': '#000',
				'stroke-width' : 5,
				'stroke-opacity': 0.4
                },
                },
    enableZoom: true,
    hoverColor: '#009efb',
    markers : [{
        latLng : [21.00, 78.00],
        name : 'Lorem Ipsum Dollar'
      
      }],
    hoverOpacity: null,
    normalizeFunction: 'linear',
    scaleColors: ['#b6d6ff', '#005ace'],
    selectedColor: '#c9dfaf',
    selectedRegions: [],
    showTooltip: true,
});




   });	 
   