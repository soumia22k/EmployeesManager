<%@ page import="com.example.Employees.Model.Employees" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Formulaire de mise à jour</title>

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Mise à jour des informations d'un employé</h2>

    <%
        Employees employee = (Employees) request.getAttribute("employee");
        if (employee == null) {
    %>
    <p>Employé introuvable.</p>
    <%
    } else {
    %>
    <form action="UpdateEmployee" method="post">

        <input type="hidden" name="id" value="<%= employee.getId() %>" />


        <div class="form-group">
            <label for="name">Nom :</label>
            <input type="text" class="form-control" name="name" value="<%= employee.getName() %>" required />
        </div>


        <div class="form-group">
            <label for="age">Âge :</label>
            <input type="number" class="form-control" name="age" value="<%= employee.getAge() %>" required />
        </div>


        <div class="form-group">
            <label for="address">Adresse :</label>
            <input type="text" class="form-control" name="address" value="<%= employee.getAddress() %>" required />
        </div>


        <button type="submit" class="btn btn-primary btn-block">Mettre à jour</button>
    </form>

    <br>
    <a href="ReadEmployee" class="btn btn-secondary btn-block">Retourner à la liste des employés</a>
    <%
        }
    %>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
