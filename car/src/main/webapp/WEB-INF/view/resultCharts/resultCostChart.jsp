<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['bar']});
    google.charts.setOnLoadCallback(drawChart1);


    function drawChart1() {

        var data = google.visualization.arrayToDataTable([
            ['', '기본 차량', '견적 차량'],
            ['1년', 2676000, ${cosr1}],
            ['2년', 5352000, ${cosr2}],
            ['3년', 8028000, ${cosr3}],
            ['4년', 10704000, ${cosr4}],
            ['5년', 13380000, ${cosr5}],
            ['6년', 16056000, ${cosr6}],
            ['7년', 18732000, ${cosr7}],
            ['8년', 21408000, ${cosr8}],
            ['9년', 24084000, ${cosr9}],
            ['10년', 26760000, ${cosr10}]
        ]);


        var options = {
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
                title: '기간별 유류비(원)',
                subtitle: ' ',
            },
            titleTextStyle: {
                fontSize: 20, // 타이틀 폰트 크기
                bold: true,   // 타이틀 볼드체 설정
                textAlign: 'center' // 타이틀 가운데 정렬
            },
            vAxis: {
                minValue: 0,
                format: '₩#,##0' // 한국 돈 표시 형식으로 설정
            },
            hAxis: {
                textStyle: {
                    fontSize: 16, // 원하는 글꼴 크기로 조절
                },
                format: '₩#,##0' // 한국 돈 표시 형식으로 설정
            }
        };

        var chart = new google.charts.Bar(document.getElementById('chart_div1'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
    };
    drawChart1();


    /* function drawMaterialChart1() {
         var materialChart = new google.charts.Bar(chartDiv);
         materialChart.draw(data, google.charts.Bar.convertOptions(materialOptions));
     }*/
</script>
<div class="h-100 w-75 pb-4" id="chart_div1"></div>


