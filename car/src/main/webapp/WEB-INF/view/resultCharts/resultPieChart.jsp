<%@ page import="com.jun.car.Composition" %>
<%@ page import="java.util.Objects" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %><%--파이차트--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load('current', {'packages': ['corechart']});
    google.charts.setOnLoadCallback(drawChart);


    function drawChart() {

        var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            <%
            Composition composition = (Composition) session.getAttribute("composition");

            if (composition.getCarb() !=0) {
            %>
            ['차체', <%= composition.getCarb() %>],
            <%
            }

            if (composition.getIsg()!=0) {
            %>
            ['ISG', <%= composition.getIsg() %>],
            <%
            }

            if (composition.getWheel()!=0) {
            %>
            ['휠', <%= composition.getWheel() %>],
            <%
            }

            if (composition.getTire()!=0) {
            %>
            ['타이어', <%= composition.getTire() %>]
            <%
            }
            %>
        ]);


        /* var data = google.visualization.arrayToDataTable([
             ['Task', 'Hours per Day'],
             ['차체', 1.5],
             ['ISG', 3],
             ['휠', 5],
             ['타이어', 1.5],
         ]);*/

        var options = {
            width: 500,
            title: '',
            backgroundColor: {
                'fill': '#EEEEEE'
            },
            chartArea: {
                backgroundColor: {
                    'fill': '#EEEEEE'
                },

            },

        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
    }
</script>

<div class="h-100 w-100" id="piechart"></div>





