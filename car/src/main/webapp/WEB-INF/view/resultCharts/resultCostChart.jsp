<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawChart1);


    function formatKRW(value) {
        // 숫자를 한국 돈 단위로 포맷팅
        return '₩' + value.toLocaleString('ko-KR');
    }


    function drawChart1() {
        var chartDiv = document.getElementById('chart_div1');

        var data = google.visualization.arrayToDataTable([
            ['', '기본 차량', '견적 차량'],
            ['1년', formatKRW(2676000), formatKRW(${cosr1})],
            ['2년', formatKRW(5352000), formatKRW(${cosr2})],
            ['3년', formatKRW(8028000), formatKRW(${cosr3})],
            ['4년', formatKRW(10704000), formatKRW(${cosr4})],
            ['5년', formatKRW(13380000), formatKRW(${cosr5})],
            ['6년', formatKRW(16056000), formatKRW(${cosr6})],
            ['7년', formatKRW(18732000), formatKRW(${cosr7})],
            ['8년', formatKRW(21408000), formatKRW(${cosr8})],
            ['9년', formatKRW(24084000), formatKRW(${cosr9})],
            ['10년', formatKRW(26760000), formatKRW(${cosr10})]
        ]);


        // var materialOptions = {
        //     width: '100%',
        //
        //     backgroundColor: {
        //         'fill': '#EEEEEE'
        //     },
        //     chartArea: {
        //         backgroundColor: {
        //             'fill': '#EEEEEE'
        //         }
        //     },
        //
        //     chart: {
        //         title: '기간별 유류비',
        //         subtitle: ' ',
        //     },
        //     titleTextStyle: {
        //         fontSize: 20, // 타이틀 폰트 크기
        //         bold: true,   // 타이틀 볼드체 설정
        //         textAlign: 'center' // 타이틀 가운데 정렬
        //     },
        //     series: {
        //         0: {axis: '준중형 차량', color: '#70AD47'}, // Bind series 0 to an axis named 'distance'.
        //         1: {axis: '나의 차량', color: '#5B9BD5'} // Bind series 1 to an axis named 'brightness'.
        //     },
        //     axes: {
        //         y: {
        //             distance: {label: 'parsecs'}, // Left y-axis.
        //             brightness: {side: 'right', label: 'apparent magnitude'} // Right y-axis.
        //         }
        //     },
        //     vAxis: {
        //         format: '0' // Y-축의 눈금 값을 정수로 표시
        //     }
        //
        // };

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
                fontSize: 20,
                bold: true,
                textAlign: 'center'
            },
            seriesType: 'bars', // 'bars'로 설정하여 막대 그래프를 사용
            series: {
                0: {targetAxisIndex: 0, type: 'bars', color: '#70AD47'}, // 첫 번째 series를 왼쪽 Y-축 (인덱스 0)에 연결
                1: {targetAxisIndex: 1, type: 'line', color: '#5B9BD5'} // 두 번째 series를 오른쪽 Y-축 (인덱스 1)에 연결
            },
            axes: {
                y: {
                    0: {label: '기본 차량 유류비 (₩)', format: '₩#,###'},
                    1: {label: '견적 차량 유류비 (₩)', format: '₩#,###'}
                }
            },
            vAxis: {
                format: '₩#,###'
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


