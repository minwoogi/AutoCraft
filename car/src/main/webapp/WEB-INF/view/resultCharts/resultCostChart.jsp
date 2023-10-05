<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawChart1);


    function drawChart1() {
        var chartDiv = document.getElementById('chart_div1');

        var data = google.visualization.arrayToDataTable([
            ['', '기본 차량', '견적 차량'],
            ['1년', 2676000, 6],
            ['2년', 5352000, 12],
            ['3년', 8028000, 21],
            ['4년', 10704000, 25],
            ['5년', 13380000, 28],
            ['6년',16056000 , 32],
            ['7년',18732000 , 38],
            ['8년',21408000 , 45],
            ['9년',24084000 , 50],
            ['10년',26760000 , 60]
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
                title: '기간별 유류비',
                subtitle: ' ',
            },
            titleTextStyle: {
                fontSize: 20, // 타이틀 폰트 크기
                bold: true,   // 타이틀 볼드체 설정
                textAlign: 'center' // 타이틀 가운데 정렬
            },
            series: {
                0: {axis: '준중형 차량',  color:'#70AD47'}, // Bind series 0 to an axis named 'distance'.
                1: {axis: '나의 차량', color: '#5B9BD5'} // Bind series 1 to an axis named 'brightness'.
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
<div class="h-75 w-75 pb-4" id="chart_div1"></div>


