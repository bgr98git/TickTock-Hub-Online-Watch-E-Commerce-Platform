$(function() {
	"use strict";


// chart 1

var ctx = document.getElementById("chart1").getContext('2d');
   
var gradientStroke1 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke1.addColorStop(0, '#ff0080');
      gradientStroke1.addColorStop(1, '#7928ca');

  var gradientStroke2 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke2.addColorStop(1, 'rgb(37 117 252 / 81%)');
      gradientStroke2.addColorStop(0.2, 'rgb(255 0 128 / 40%)');


  var gradientStroke3 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke3.addColorStop(1, 'rgb(106 17 203 / 52%)');
      gradientStroke3.addColorStop(0, 'rgb(37 117 252 / 70%)');
	  
	var gradientStroke4 = ctx.createLinearGradient(0, 0, 0, 300);
      gradientStroke4.addColorStop(1, '#6a11cb');
      gradientStroke4.addColorStop(0, '#2575fc');

	var myChart = new Chart(ctx, {
	  type: 'line',
	  data: {
		labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
		datasets: [{
		  label: 'Sales',
		  data: [0, 7, 18, 10, 18, 14, 40, 30, 56, 13, 18, 2],
		  backgroundColor: gradientStroke2,
          fill: {
            target: 'origin',
            above: gradientStroke2,   // Area will be red above the origin
           // below: 'rgb(20 201 32 / 15%)'    // And blue below the origin
            },
          borderColor: gradientStroke1,
		  pointRadius: "0",
		  borderWidth: 4,
		  tension: 0.4,
		}]
	  },
	  options: {
		maintainAspectRatio: false,
		plugins: {
			legend: {
				display: false,
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
		labels: ["Clothing", "Electronic", "Furniture"],
		datasets: [{
		  backgroundColor: [
			gradientStroke2,
			gradientStroke3,
			gradientStroke4
		  ],
		  hoverBackgroundColor: [
			gradientStroke2,
			gradientStroke3,
			gradientStroke4
		  ],
		  data: [30, 55, 25],
		  borderWidth: [4, 4, 4]
		}]
	  },
	  options: {
		maintainAspectRatio: false,
		cutout: 110,
		plugins: {
		legend: {
			display: false,
		}
	}
		
	}
	});






// chart 3    

var ctx = document.getElementById('chart3').getContext('2d');

     
var gradientStroke3 = ctx.createLinearGradient(0, 0, 0, 300);
    gradientStroke3.addColorStop(0, 'rgb(0 176 155 / 40%)');  
    gradientStroke3.addColorStop(1, 'rgb(150 201 61 / 0%)'); 

var gradientStroke4 = ctx.createLinearGradient(0, 0, 0, 300);
    gradientStroke4.addColorStop(0, '#00b09b');  
    gradientStroke4.addColorStop(1, '#00b09b'); 


     var myChart = new Chart(ctx, {
       type: 'line',
       data: {
         labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
         datasets: [{
               label: 'Facebook',
               data: [5, 30, 16, 23, 8, 14, 2],
       fill: {
         target: 'origin',
           above: gradientStroke3,   // Area will be red above the origin
         //below: 'rgb(21 202 32 / 100%)'   // And blue below the origin
         }, 
               tension: 0.4,
               pointRadius :"0",
               borderColor: [
                 gradientStroke4
               ],
               borderWidth: 3
           }]
       },
       options: {
        maintainAspectRatio: false,
        barPercentage: 0.7,
        categoryPercentage: 0.45,
        plugins: {
          legend: {
            maxWidth: 20,
            boxHeight: 20,
            position:'bottom',
            display: false,
          }
        },
        scales: {
          x: {
            stacked: false,
            beginAtZero: true,
            display: true,
          },
          y: {
            stacked: false,
            beginAtZero: true,
            display: true,
          }
          }
      }
     });














	
});