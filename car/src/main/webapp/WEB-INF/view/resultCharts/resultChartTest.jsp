<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawChart3);


    function drawChart3() {
        var chartDiv = document.getElementById('cd');

        var data = google.visualization.arrayToDataTable([
            ['', '기본 차량', '견적 차량'],
            ['차량 금액', 100, 23.3],
            ['유류비', 24000, 4.5],
            ['CO2 발생량', 30000, 14.3],
            ['연비', 50000, 0.9]
        ]);


        var materialOptions = {
            width: '100%',

            backgroundColor: {
                'fill': '#EEEEEE'
            },
            chartArea: {
                backgroundColor: {
                    'fill': '#EEEEEE'
                }
            },

            chart: {
                title: ' ',
                subtitle: ' '
            },
            series: {
                0: {axis: '기본 차량', color:'#70AD47'}, // Bind series 0 to an axis named 'distance'.
                1: {axis: '견적 차량', color: '#5B9BD5'} // Bind series 1 to an axis named 'brightness'.
            },
            axes: {
                y: {
                    distance: {label: 'parsecs'}, // Left y-axis.
                    brightness: {side: 'right', label: 'apparent magnitude'} // Right y-axis.
                }
            },
            vAxis: {
                format: '0' // Y-축의 눈금 값을 정수로 표시
            }

        };

        function drawMaterialChart3() {
            var materialChart = new google.charts.Bar(chartDiv);
            materialChart.draw(data, google.charts.Bar.convertOptions(materialOptions));
        }

        drawMaterialChart3();
    }
</script>
<div class="h-90 w-75" id="cd"></div>









