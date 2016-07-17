$(function () {
  $.ajax({
    method: "GET",
    url: "/winning_word_lengths",
    dataType: "json"
  })

    .done(function (data) {
      debugger;
      $('#absurd-graph').highcharts({
          chart: {
              zoomType: 'xy'
          },
          title: {
              text: 'Letters in Winning Word of Scripps National Spelling Bee'
          },
          subtitle: {
              text: 'Number of People Killed by Venomous Spiders'
          },
          xAxis: [{
              categories: data["year"],
              crosshair: true
          }],
          yAxis: [{ // Primary yAxis
              labels: {
                  format: '{value} Deaths',
                  style: {
                      color: Highcharts.getOptions().colors[1]
                  }
              },
              title: {
                  text: 'Venomous Spider Deaths',
                  style: {
                      color: Highcharts.getOptions().colors[1]
                  }
              },
              opposite: true

          }, { // Secondary yAxis
              gridLineWidth: 0,
              title: {
                  text: 'Winning Word Length',
                  style: {
                      color: Highcharts.getOptions().colors[0]
                  }
              },
              labels: {
                  format: '{value} Letters',
                  style: {
                      color: Highcharts.getOptions().colors[0]
                  }
              }

          }],
          tooltip: {
              shared: true
          },
          legend: {
              layout: 'vertical',
              align: 'left',
              x: 80,
              verticalAlign: 'top',
              y: 55,
              floating: true,
              backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
          },
          series: [{
              name: 'Winning Word Length',
              type: 'spline',
              yAxis: 1,
              data: data['wordLength'],
              dashStyle: 'shortdot',
              tooltip: {
                  valueSuffix: ' letters'
              }

          }, {
              name: 'Venomous Spider Deaths',
              type: 'spline',
              data: data['spiderDeaths'],
              tooltip: {
                  valueSuffix: ' deaths'
              }
          }]
      });
  });
});
