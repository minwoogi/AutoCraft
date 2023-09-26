<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>MyCar</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>

    <style>

        .custom-card {
            width: 100%;
            height: 100%;
        }

    </style>

</head>
<body>


<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid   px-0 h-100" style="background-color: #EEEEEE">
    <div class="row mx-0 h-100">


        <div class="col w-100 h-100 mx-0 px-0">
            <div class="d-flex align-items-center justify-content-center h-100">
                <div>
                    <img src="/img/car.png" class="d-block w-100" alt="car">
                </div>
            </div>

        </div>

        <div class="col w-100 h-100 mx-0 px-0 d-flex flex-column bd-highlight mb-3">

            <div class="scrollable">

                <div class="name">
                    배기량
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/components1000.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">1000cc</h5>
                                    <!-- Product price-->
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/components1250.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">1250cc</h5>
                                    <!-- Product price-->
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>


                </div>

                <div class="name">
                    차제 종류
                </div>

                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/metal.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">기본</h5>
                                    <!-- Product price-->
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/al.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">알루미늄</h5>
                                    <!-- Product price-->
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
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
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/wheels.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">13인치</h5>
                                    <!-- Product price-->
                                    경량 휠<br>
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <!-- 추가 카드 2개 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/wheels.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">14인치</h5>
                                    <!-- Product price-->
                                    경량 휠<br>
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/wheels.png" alt="displacement1000"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">15인치</h5>
                                    <!-- Product price-->
                                    경량 휠<br>
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
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
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/tire.png" alt="tire"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">기본 타이어</h5>
                                    <!-- Product price-->
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
                                        class="bi bi-plus-circle"></i></a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card custom-card">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/tire-n.png" alt="tire-n"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">친환경 타이어</h5>
                                    <!-- Product price-->
                                    0,000원<br>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">담기&nbsp;<i
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
                                            <option value="option${year}">${year}년</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="d-flex justify-content-center">
                                <button class="btn btn-outline-dark" href="#">선택 완료</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>
