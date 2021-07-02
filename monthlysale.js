$(document).ready(function(){

	$.ajax({
		type: "post",
		url: "getMonthlysale.php",
		success: function(response){
			console.log(response);

			var result = JSON.parse(response);

			var data = {
		  	labels: ["January", "February", "March", "April", "May", "June", "July", "August", 
            'September', "Ocotber", "November", "December"],
		  	datasets: [
			  		{
			  			label: "My First dataset",
			  			fillColor: "rgba(220,220,220,0.2)",
			  			strokeColor: "rgba(220,220,220,1)",
			  			pointColor: "rgba(220,220,220,1)",
			  			pointStrokeColor: "#fff",
			  			pointHighlightFill: "#fff",
			  			pointHighlightStroke: "rgba(220,220,220,1)",
			  			data: [result[0], result[1], result[2], result[3], result[4], result[5], result[6],
			  			result[7], result[8], result[9], result[10], result[11]]
			  		}
			  	]
		    };

		    var ctxl = $("#lineChartDemo").get(0).getContext("2d");
		    var lineChart = new Chart(ctxl).Line(data);
		}
	})

	
});