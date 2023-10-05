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


<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid   px-0 h-100" style="background-color: #EEEEEE">
    <div class="row mx-0 h-100">


        <div class="col w-100 h-100 mx-0 px-0">
            <%--<div class="d-flex align-items-center justify-content-center h-100">
                <div>
                    <img src="/img/car.png" class="d-block w-100" alt="car">
                </div>
                <div>
                    하이
                </div>
            </div>--%>
            <div class="h-100 w-100" style="display: flex; flex-direction: column; align-items: center;">
                <div style="flex: 1; text-align: center; display: flex; align-items: center; justify-content: center;">
                    <img src="/img/car.png" class="d-block" alt="car">
                </div>
                <div class="h-100 w-100 d-flex justify-content-center align-items-center" style="flex: 1;">
                    <jsp:include page="indexCharts/indexChart.jsp"></jsp:include>
                    <jsp:include page="indexCharts/indexChart2.jsp"></jsp:include>
                    <jsp:include page="indexCharts/indexChart3.jsp"></jsp:include>
                    <jsp:include page="indexCharts/indexChart4.jsp"></jsp:include>
                </div>
            </div>
        </div>

        <div class="col w-100 h-100 mx-0 px-0 d-flex flex-column bd-highlight mb-3">

            <div class="scrollable">

                <div class="name">
                    ISG 유무
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div id="isgX" class="card custom-card isg" onclick="toggleCardBorder('isgX','.isg')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/components1000.png" alt="isgX"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">ISG X (기본)</h5>
                                    <!-- Product price-->
                                    +0원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div id="isgO" class="card custom-card isg" onclick="toggleCardBorder('isgO','.isg')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/components1250.png" alt="displacement1250"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">ISG O</h5>
                                    <!-- Product price-->
                                    +600,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>


                </div>

                <div class="name">
                    차체 종류
                </div>

                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div id="metal" class="card custom-card carb" onclick="toggleCardBorder('metal','.carb')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/metal.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">강철 (기본)</h5>
                                    <!-- Product price-->
                                    +0원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <div id="al" class="card custom-card carb" onclick="toggleCardBorder('al','.carb')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/al.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">알루미늄</h5>
                                    <!-- Product price-->
                                    +2,000,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="name">
                    휠 인치
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div id="13" class="card custom-card wheel" onclick="toggleCardBorder('13','.wheel')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/wheel13.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">13인치</h5>
                                    <!-- Product price-->
                                    경량 휠<br>
                                    -300,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <!-- 추가 카드 2개 -->
                    <div class="col-lg-4 col-md-6">
                        <div id="14" class="card custom-card wheel" onclick="toggleCardBorder('14','.wheel')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/wheel14.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">14인치</h5>
                                    <!-- Product price-->
                                    경량 휠<br>
                                    -150,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div id="15" class="card custom-card wheel" onclick="toggleCardBorder('15','.wheel')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/wheels.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">15인치 (기본)</h5>
                                    <!-- Product price-->
                                    경량 휠<br>
                                    +0원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="name mx-1">
                    타이어
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div id="tire" class="card custom-card tire" onclick="toggleCardBorder('tire','.tire')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/tire.png" alt="tire"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">타이어 (기본)</h5>
                                    <!-- Product price-->
                                    +0원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div id="tiren" class="card custom-card tire" onclick="toggleCardBorder('tiren','.tire')">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/tire-n.png" alt="tire-n"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">친환경 타이어</h5>
                                    <!-- Product price-->
                                    +400,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">선택&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-4 col-md-6">
                        <div class="card mb-5">
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">운행 예상 년도</h5>
                                    <!-- 선택 옵션 -->
                                    <label for="selectOption" class="mb-3">옵션 선택:</label>
                                    <select id="selectOption" class="form-select">
                                        <c:forEach var="year" begin="1" end="10">
                                            <c:set var="defaultYear" value="${year}년"/>
                                            <c:if test="${year == 7}">
                                                <option value="${year}(기본)">${defaultYear}(기본)</option>
                                            </c:if>
                                            <c:if test="${year != 7}">
                                                <option value="${year}">${defaultYear}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="d-flex justify-content-center">
                                <button class="btn btn-outline-dark" onclick="getSelectedCardIdAndSend()">선택 완료</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>


<script>

    function sweetAlert(tle, msg, icn) {
        Swal.fire({
            title: tle,  // 제목
            text: msg,  // 메시지 내용
            icon: icn,  // 아이콘 (success, error, warning, info 중 선택)
            confirmButtonText: '확인'  // 확인 버튼 텍스트
        });
    }


    function toggleCardBorder(cardId, query) {
        // 모든 카드 요소에 대해 빨간색 테두리를 초기화합니다.
        var allCards = document.querySelectorAll(query);

        allCards.forEach(function (card) {
            card.style.borderColor = '';
        });

        // 클릭한 카드에 빨간색 테두리를 설정합니다.
        var card = document.getElementById(cardId);
        if (card) {
            card.style.borderColor = 'red'; // 선택한 카드의 테두리를 빨간색으로 설정
        }
    }

    function getSelectedCardIdAndSend() {
        var selectedCards = document.querySelectorAll(".custom-card[style*='red']"); // 빨간색 테두리가 설정된 모든 카드 선택
        var selectedCardIds = []; // 선택된 카드의 ID를 저장할 배열

        if (selectedCards.length < 4) {
            sweetAlert("옵션 선택 누락", '', 'info');
            return;
        }

        if (selectedCards.length > 0) {
            // 선택된 각 카드의 ID를 배열에 추가
            selectedCards.forEach(function (card) {
                selectedCardIds.push(card.id);
            });
        }

        var selectElement = document.getElementById("selectOption"); // 셀렉트 박스 엘리먼트 가져오기
        var selectedYear = selectElement.options[selectElement.selectedIndex].value; // 선택된 옵션의 값 가져오기


        $.ajax({
            type: 'POST',
            url: '/part',
            data: JSON.stringify({
                isg: selectedCardIds[0],
                carb: selectedCardIds[1],
                wheel: selectedCardIds[2],
                tire: selectedCardIds[3],
                year: selectedYear
            }),
            contentType: 'application/json',
            success: function () {
                window.location.href = "/result";
            },
            error: function (e) {
                console.log(e);
            }
        });


    }


</script>

</body>
</html>
