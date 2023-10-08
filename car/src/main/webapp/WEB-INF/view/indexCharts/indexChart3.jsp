<%--차량 금액 차트--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawStuff);


    function drawStuff() {
        var chartDiv = document.getElementById('index_chart_div3');

        var data = google.visualization.arrayToDataTable([
            ['', '', { role: 'style' }],
            ['CO2 발생량', 1860040,'#ED7D31'],
        ]);


        var materialOptions = {
            width: 200,

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
                0: {axis: '기본 차량',color:'#ED7D31'}, // Bind series 0 to an axis named 'distance'.
                1: {axis: '견적 차량'} // Bind series 1 to an axis named 'brightness'.
            },
            axes: {
                y: {
                    format :'g',
                    distance: {label: 'parsecs'}, // Left y-axis.
                    brightness: {side: 'right', label: 'apparent magnitude'} // Right y-axis.
                }
            },
            vAxis: {
                format: '###,###g' // Y-축의 눈금 값을 정수로 표시
            },
            hAxis: {
                textStyle: {
                    fontSize: 16, // 원하는 글꼴 크기로 조절
                },
            }

        };

        function drawMaterialChart() {
            var materialChart = new google.charts.Bar(index_chart_div3);
            materialChart.draw(data, google.charts.Bar.convertOptions(materialOptions));
        }

        drawMaterialChart();
    }
</script>
<div class="h-100 w-90 pb-4" id="index_chart_div3"></div>

