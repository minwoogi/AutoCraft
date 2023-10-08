<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MyCar</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

<script>
function formatKRW(value, id) {


return '₩' + value.toLocaleString('ko-KR');
}

function formatCo2(value, id) {
    return   value.toLocaleString('ko-KR')+'g';
}
</script>


<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid   px-0 h-100" style="background-color: #EEEEEE;">
    <div class="row mx-0 h-100">


        <div class="col w-100 h-100 mx-0 px-0">
            <div class="h-100 w-100" style="display: flex; flex-direction: column; align-items: center;">

                <div class="mt-2" style="font-family: 'GmarketSansMedium', sans-serif; font-size: 30px;">
                    <i class="bi bi-cash-coin"></i>&nbsp;차량 견적 금액
                </div>
                <div style="flex: 1; text-align: center; display: flex; align-items: center; justify-content: center;">
                    <div style="margin-right: 20px;">
                        <img src="/img/carcon.png" class="responsive-image d-block" alt="car">
                    </div>
                    <div style="font-family: 'GmarketSansMedium', sans-serif; font-size: 30px;">
                        <div class="mx-2" style="border-bottom: 1px solid black; color: #217af4">
                            차량 견적 금액 ${resultValue}만원
                        </div>
                        <div class="mt-2">
                            차량 기본 금액 1560만원
                        </div>
                    </div>
                </div>

                <div style="flex: 1; text-align: center; display: flex; align-items: center; justify-content: center;">
                    <div style="border: 1px solid #000; border-radius: 30px; padding: 10px; margin: 10px;">
                        <div class="mx-3">
                            <img class="responsive-image" src="img/money.png" alt="money">
                        </div>
                        <div style="font-family: 'GmarketSansMedium', sans-serif; font-size: 20px;">
                            유류비 절약 금액
                        </div>
                        <div style="color: #217af4">
                            <script>document.write(formatKRW(${costValue}))</script>원
                        </div>
                    </div>
                    <div style="border: 1px solid #000; border-radius: 30px; padding: 10px; margin: 10px;">
                        <div class="mx-3">
                            <img class="responsive-image" src="img/co2.png" alt="money">
                        </div>
                        <div style="font-family: 'GmarketSansMedium', sans-serif; font-size: 20px;">
                            Co2 저감
                        </div>
                        <div style="color: #217af4">
                            <script>document.write(formatCo2(${co2Value}))</script>
                        </div>
                    </div>
                    <div style="border: 1px solid #000; border-radius: 30px; padding: 10px; margin: 10px;">
                        <div class="mx-3">
                            <img class="responsive-image" src="img/gi.png" alt="money">
                        </div>
                        <div style="font-family: 'GmarketSansMedium', sans-serif; font-size: 20px;">
                            연비 상승
                        </div>
                        <div style="color: #217af4">
                            +${increase}%
                        </div>
                    </div>
                </div>


                <div class="mt-1" style="font-family: 'GmarketSansMedium', sans-serif; font-size: 30px;">
                    최종 연비 구성도
                </div>
                <div style="flex: 1; text-align: center; display: flex; align-items: center; justify-content: center;">
                    <jsp:include page="resultCharts/resultPieChart.jsp"></jsp:include>
                </div>


            </div>
        </div>


        <div class="col w-100 h-100 mx-0 px-0 ">
            <div class="h-100 w-100 " style="display: flex; flex-direction: column; align-items: center;">
                <div class="mt-5" style="font-family: 'GmarketSansMedium', sans-serif; font-size: 30px;">
                    <i class="bi bi-bar-chart-line"></i>&nbsp;나의 차량과 비교
                </div>

                <div class="h-100 w-100 d-flex justify-content-center align-items-center" style="flex: 1;">
                    <jsp:include page="resultCharts/resultCo2Chart.jsp"></jsp:include>
                </div>
                <div class="h-100 w-100 d-flex justify-content-center align-items-center" style="flex: 1;">
                    <jsp:include page="resultCharts/resultCostChart.jsp"></jsp:include>
                </div>
                <div class="mb-5" style="font-family: 'GmarketSansMedium', sans-serif; font-size: 30px;">
                    <i class="bi bi-bar-chart-line"></i>&nbsp;절약금액 : <script>document.write(formatKRW(${myCost}))</script>원
                </div>
            </div>
        </div>


    </div>

    <jsp:include page="resultfooter.jsp"></jsp:include>

    <style>
        @font-face {
            font-family: 'GmarketSansMedium';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        .responsive-image {
            max-width: 100%; /* 이미지의 최대 너비를 화면 너비의 50%로 설정 */
            height: auto; /* 높이는 자동으로 조절되어 비율이 유지됩니다. */
        }

        #restart {
            font-family: 'GmarketSansMedium';
            color: gold;
            background-color: #4E00FF;
            font-size: 2em;
        }
    </style>

</body>
</html>
