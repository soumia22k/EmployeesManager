<%@ page import="com.example.Employees.Model.Employees" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Liste Des Employés</title>
    <!-- Lien vers le CSS de Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Liste des Employés</h2>

    <%
        // Récupérer la liste des employés depuis l'attribut de la requête
        List<Employees> employeesList = (List<Employees>) request.getAttribute("employeesList");
        if (employeesList == null || employeesList.isEmpty()) {
    %>
    <p class="text-center">Aucun employé trouvé.</p>
    <%
    } else {
    %>
    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>Id</th>
            <th>Nom</th>
            <th>Âge</th>
            <th>Adresse</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Employees employee : employeesList) {
        %>
        <tr>
            <td><%= employee.getId() %></td>
            <td><%= employee.getName() %></td>
            <td><%= employee.getAge() %></td>
            <td><%= employee.getAddress() %></td>
            <td>
                <!-- Bouton Edit -->
                <a href="UpdateEmployee?id=<%= employee.getId() %>" class="btn btn-warning btn-sm">Editer</a>
                <!-- Formulaire pour supprimer -->
                <form action="deleteEmployee" method="post" style="display: inline;">
                    <input type="hidden" name="id" value="<%= employee.getId() %>" />
                    <input type="submit" value="Supprimer" class="btn btn-danger btn-sm" />
                </form>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <%
        }
    %>

    <!-- Bouton pour créer un nouvel employé -->
    <a href="createEmployee" class="btn btn-success btn-lg btn-block">Créer un nouvel Employé</a>
</div>

<!-- Scripts de Bootstrap pour la fonctionnalité JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
