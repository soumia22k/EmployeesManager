<%@ page import="com.example.Employees.Model.Employees" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire de création</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Formulaire de Création des Employés</h2>
    <form action="createEmployee" method="post">
        <div class="form-group">
            <label for="name">Nom :</label>
            <input type="text" class="form-control" id="name" name="name" required />
        </div>

        <div class="form-group">
            <label for="address">Adresse :</label>
            <input type="text" class="form-control" id="address" name="address" required />
        </div>

        <div class="form-group">
            <label for="age">Âge :</label>
            <input type="number" class="form-control" id="age" name="age" required />
        </div>

        <button type="submit" class="btn btn-primary btn-block">Créer</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
