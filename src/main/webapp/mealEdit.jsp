
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meal</title>
    <style>
        dl {
            background: no-repeat scroll 0 0 #FAFAFA;
            margin: 8px 0;
            padding: 0;
        }

        dt {
            display: inline-block;
            width: 170px;
        }

        dd {
            display: inline-block;
            margin-left: 8px;
            vertical-align: top;
        }
    </style>
</head>
<body>
<section>
    <h2><a href="">Home</a></h2>
    <h3>Edit Meal</h3>
    <hr>
    <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.Meal" scope="request"/>
        <form method="post" action="meals">
            <input type="hidden" name="id" value="${meal.id}">
        <dl>
            <dt>Date time:</dt>
            <dd><input type="datetime-local" value="${meal.dateTime}" name="dateTime"></dd>
        </dl>
        <dl>
            <dt>Description</dt>
            <dd><input type="text" value="${meal.description}" name="description"></dd>
        </dl>
        <dl>
            <dt>Calories:</dt>
            <dd><input type="number" value="${meal.calories}" name="calories"></dd>
        </dl>
        <button type="submit">Save</button>
        <button onclick="window.history.back()">Cancel</button>
        </form>
</section>
</body>
</html>