<%@ page import="Lab_2.Point" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!private StringBuilder answer;%>
<jsp:useBean id="pointsBean" class="Lab_2.PointsTableBean" scope="session"/>
<html>
<head>
    <title>Результат проверки</title>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="utf-8">
</head>
<body>
<table class="results block centered">
    <tr> <th>N</th> <th>X</th> <th>Y</th> <th>R</th> <th><b>Результат</b></th> <th>Показать </th> </tr>
    <%
    answer = new StringBuilder();

    List<Point> list = pointsBean.getPoints();

        while (list.size() > 10) {
            list.remove(0);
        }

        List<Point> reversed = new ArrayList<>(list);
        Collections.reverse(reversed);

        for (Point point : reversed) {
            if (point != null) {
                answer.append(point);
            } else {
                answer.append("<tr> <td colspan='6'><b>Неверные аргументы</b></td> </tr>");
            }
        }

%>
    <%=answer%>
</table>
</body>
</html>
