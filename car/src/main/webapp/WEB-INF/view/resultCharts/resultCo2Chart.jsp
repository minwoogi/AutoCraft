<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawChart1);


    function drawChart1() {
        var chartDiv = document.getElementById('chart_divTest');

        var data = google.visualization.arrayToDataTable([
            ['', '기본 차량', '견적 차량'],
            ['1년', 3, 3],
            ['2년', 2, 4],
            ['3년', 6, 4],
            ['4년', 2, 5],
            ['5년', 2, 4],
            ['6년', 4, 6],
            ['7년', 7, 1],
            ['8년', 4, 6],
            ['9년', 5, 5],
            ['10년', 2, 3]
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
                title: '기간별 CO2 발생량',
                subtitle: ' ',
            },
            titleTextStyle: {
                fontSize: 20, // 타이틀 폰트 크기
                bold: true,   // 타이틀 볼드체 설정
                textAlign: 'center' // 타이틀 가운데 정렬
            },
            series: {
                0: {axis: '준중형 차량', color: '#4472C4'}, // Bind series 0 to an axis named 'distance'.
                1: {axis: '나의 차량', color: '#ED7D31'} // Bind series 1 to an axis named 'brightness'.
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

        function drawMaterialChart1() {
            var materialChart = new google.charts.Bar(chartDiv);
            materialChart.draw(data, google.charts.Bar.convertOptions(materialOptions));
        }

        drawMaterialChart1();
    }
</script>
<div class="h-75 w-75 pb-4" id="chart_divTest"></div>


