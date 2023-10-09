<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawChart1);


    function drawChart1() {
        var chartDivt = document.getElementById('chart_divTest');

        var data = google.visualization.arrayToDataTable([
            ['', '기본 차량', '견적 차량'],
            ['1년', 1860040, ${cor1}],
            ['2년', 3720080, ${cor2}],
            ['3년', 5580120, ${cor3}],
            ['4년', 7440160, ${cor4}],
            ['5년', 9300200, ${cor5}],
            ['6년', 11160240, ${cor6}],
            ['7년', 13020280, ${cor7}],
            ['8년', 14880320, ${cor8}],
            ['9년', 16740360, ${cor9}],
            ['10년', 18600400, ${cor10}]
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
                title: '기간별 CO2 발생량(g)',
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
                    format :'g',
                    distance: {label: 'parsecs'}, // Left y-axis.
                    brightness: {side: 'right', label: 'apparent magnitude'} // Right y-axis.
                }
            },
            vAxis: {
                format: '###,###g'
            }

        };

        function drawMaterialChart1() {
            var materialChart = new google.charts.Bar(chartDivt);
            materialChart.draw(data, google.charts.Bar.convertOptions(materialOptions));
        }

        drawMaterialChart1();
    }
</script>
<div class="h-75 w-75 pb-4" id="chart_divTest"></div>


