Highcharts.chart('container', {

    chart: {
        type: 'boxplot',
	inverted: true
    },

    title: {
        text: 'Average Players Alive for Ring 1'
    },

    legend: {
        enabled: true
    },

    yAxis: {
	reversed: true,
    },

    xAxis: {
    	visible: false
    },

    series: [{
	name: 'Players Alive',
	data: [
            highchartDATA
        ],
    }]

});
