<!DOCTYPE html>
<html>

<head>
    <title>
        Gestión
    </title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <table>
        <tr>
            <td>
                <form onsubmit="event.preventDefault();onFormSubmit();" autocomplete="off">
                    <div>
                        <label>Nombre Completo</label><label class="validation-error hide" id="fullNameValidationError">Este campo es requerido.</label>
                        <input type="text" name="fullName" id="fullName">
                    </div>
                    <div>
                        <label>Lugar</label>
                        <input type="text" name="empCode" id="empCode">
                    </div>
                    <div>
                        <label>Precio</label>
                        <input type="text" name="salary" id="salary">
                    </div>
                    <div>
                        <label>Hospedaje</label>
                        <input type="text" name="city" id="city">
                    </div>
                    <div>
                        <label>Alimentación</label>
                        <input type="text" name="qw" id="qw">
                    </div>
                    <div>
                        <label>Atracciones</label>
                        <input type="text" name="er" id="er">
                    </div>
                    <div>
                        <label>Otros</label>
                        <input type="text" name="ty" id="ty">
                    </div>
                    <div>
                        <label>Contacto</label>
                        <input type="text" name="ui" id="ui">
                    </div>
                    <div class="form-action-buttons">
                        <input type="submit" value="Añadir">
                    </div>
                </form>
            </td>
            <td>
                <h1> Gestión de Portafolio </h1>
                <table class="list" id="employeeList">
                    <thead>
                        <tr>
                            <th>Nombre Completo</th>
                            <th>Lugar</th>
                            <th>Precio</th>
                            <th>Hospedaje</th>
                            <th>Alimentación</th>
                            <th>Atracciones</th>
                            <th>Otros</th>
                            <th>Contacto</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </td>
        </tr>
    </table>
    <script src="script.js"></script>
</body>

</html>