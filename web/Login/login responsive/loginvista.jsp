<!DOCTYPE html>
<%@page import="Clases.*"%>
<%@page import="java.sql.*"%>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
        <link rel="stylesheet" href="estilos.css">


    </head>

    <body>
        <%
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://LAPTOP-QLRT8H66:1433;databaseName=QuindioTravel;integratedSecurity=true");
        %>
        <form class="formulario">

            <h1>Login</h1>
            <div class="contenedor">



                <div class="input-contenedor">
                    <i class="fas fa-user icon"></i>
                    <input type="text" placeholder="Nombre de Usuario" name="nombreUsuario">

                </div>

                <div class="input-contenedor">
                    <i class="fas fa-key icon"></i>
                    <input type="password" placeholder="Contraseña" name="password">
                    <br>
                    <a class="link" href="olvidarC.jsp"><br>¿Olvidaste tu contraseña? </a>


                </div>
                <br>
                <input type="submit" value="Ingresar" class="button" name="ingresar">
                <br>
                <p>Cuando te registras, aceptas nuestras condiciones de uso y políticas de privacidad.</p>
                <p>¿No tienes una cuenta?
                    <a class="link" href="registrarvista.jsp"><br>Regístrate</a>
                </p>
            </div>
        </form>
        <%
            if (request.getParameter("ingresar") != null) {
                String nombreUsuario = request.getParameter("nombreUsuario");
                String password = request.getParameter("password");
                if (!nombreUsuario.isEmpty() && !password.isEmpty()) {
                    PreparedStatement pst = con.prepareStatement("SELECT * FROM Usuarios WHERE nombreUsuario='" + nombreUsuario + "' and contraseña='" + password + "'");
                    ResultSet rs = pst.executeQuery();
                    if (rs.next()) {
                        out.print("Bienvenido/a.");
                    } else {
                        out.print("Nombre de Usuario o Contraseña incorrectos. Por favor, intente otra vez.");
                    }
                    pst = con.prepareStatement("SELECT IDUsuario FROM Usuarios WHERE IDUsuario <= 10000000");
                    rs = pst.executeQuery();
                    int key = 0;
                    int i = 0;
                    int[] IDUsuarios = new int[10000000];
                    while (rs.next()) {
                        IDUsuarios[i] = rs.getInt("IDUsuario");
                        i++;
                    }
                    con.close();
        %>
        <table>
            <th>10.000 Registros (ID a buscar: 10.000)</th>
            <th>100.000 Registros (ID a buscar: 100.000)</th>
            <th>1.000.000 Registros (ID a buscar: 1.000.000)</th>
            <th>10.000.000 Registros (ID a buscar: 10.000.000)</th>
            <tr style="border: 1px solid black">
                <td style="border: 1px solid black">Encontrado?: 
                    <%
                        long tiempoInicio = 0;
                        long tiempoFin = 0;
                        int[] IDUsuarios1 = new int[10000];
                        for (i = 0; i < 10000; i++) {
                            IDUsuarios1[i] = i + 1;
                        }
                        key = i;
                        int cantidadElementos = Arreglos.cantidadElementos(IDUsuarios1);
                        tiempoInicio = System.nanoTime();
                        int contador = Arreglos.buscarElemento(IDUsuarios1, cantidadElementos, key);
                        tiempoFin = System.nanoTime();
                        if (contador == -1) {
                            out.print("No, ");
                        } else {
                            out.print("Si, ");
                        }
                    %>
                    Tiempo: 
                    <%
                        out.print(tiempoFin - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Encontrado?: 
                    <%
                        tiempoInicio = 0;
                        tiempoFin = 0;
                        int[] IDUsuarios2 = new int[100000];
                        for (i = 0; i < 100000; i++) {
                            IDUsuarios2[i] = i + 1;
                        }
                        key = i;
                        cantidadElementos = Arreglos.cantidadElementos(IDUsuarios2);
                        tiempoInicio = System.nanoTime();
                        contador = Arreglos.buscarElemento(IDUsuarios2, cantidadElementos, key);
                        tiempoFin = System.nanoTime();
                        if (contador == -1) {
                            out.print("No, ");
                        } else {
                            out.print("Si, ");
                        }
                    %>
                    Tiempo: 
                    <%
                        out.print(tiempoFin - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Encontrado?: 
                    <%
                        tiempoInicio = 0;
                        tiempoFin = 0;
                        int[] IDUsuarios3 = new int[1000000];
                        for (i = 0; i < 1000000; i++) {
                            IDUsuarios3[i] = i + 1;
                        }
                        key = i;
                        cantidadElementos = Arreglos.cantidadElementos(IDUsuarios3);
                        tiempoInicio = System.nanoTime();
                        contador = Arreglos.buscarElemento(IDUsuarios3, cantidadElementos, key);
                        tiempoFin = System.nanoTime();
                        if (contador == -1) {
                            out.print("No, ");
                        } else {
                            out.print("Si, ");
                        }
                    %>
                    Tiempo: 
                    <%
                        out.print(tiempoFin - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Encontrado?: 
                    <%
                        tiempoInicio = 0;
                        tiempoFin = 0;
                        int[] IDUsuarios4 = new int[10000000];
                        for (i = 0; i < 10000000; i++) {
                            IDUsuarios4[i] = i + 1;
                        }
                        key = i;
                        cantidadElementos = Arreglos.cantidadElementos(IDUsuarios4);
                        tiempoInicio = System.nanoTime();
                        contador = Arreglos.buscarElemento(IDUsuarios4, cantidadElementos, key);
                        tiempoFin = System.nanoTime();
                        if (contador == -1) {
                            out.print("No, ");
                        } else {
                            out.print("Si, ");
                        }
                    %>
                    Tiempo: 
                    <%
                        out.print(tiempoFin - tiempoInicio);
                    %>
                </td>
            </tr>

            <tr style="border: 1px solid black">
                <td style="border: 1px solid black">Encontrado?: 
                    <%
                        tiempoInicio = 0;
                        tiempoFin = 0;
                        ListasDobles listaUsuarios1 = new ListasDobles();
                        for (i = 0; i < 10000; i++) {
                            listaUsuarios1.insertarElemento(i + 1);
                        }
                        key = i;
                        tiempoInicio = System.nanoTime();
                        contador = listaUsuarios1.buscarElemento(key);
                        tiempoFin = System.nanoTime();
                        if (contador == -1) {
                            out.print("No, ");
                        } else {
                            out.print("Si, ");
                        }
                    %>
                    Tiempo: 
                    <%
                        out.print(tiempoFin - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Encontrado?: 
                    <%
                        tiempoInicio = 0;
                        tiempoFin = 0;
                        ListasDobles listaUsuarios2 = new ListasDobles();
                        for (i = 0; i < 100000; i++) {
                            listaUsuarios2.insertarElemento(i + 1);
                        }
                        key = i;
                        tiempoInicio = System.nanoTime();
                        contador = listaUsuarios2.buscarElemento(key);
                        tiempoFin = System.nanoTime();
                        if (contador == -1) {
                            out.print("No, ");
                        } else {
                            out.print("Si, ");
                        }
                    %>
                    Tiempo: 
                    <%
                        out.print(tiempoFin - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Encontrado?: 
                    <%
                        tiempoInicio = 0;
                        tiempoFin = 0;
                        ListasDobles listaUsuarios3 = new ListasDobles();
                        for (i = 0; i < 1000000; i++) {
                            listaUsuarios3.insertarElemento(i + 1);
                        }
                        key = i;
                        tiempoInicio = System.nanoTime();
                        contador = listaUsuarios3.buscarElemento(key);
                        tiempoFin = System.nanoTime();
                        if (contador == -1) {
                            out.print("No, ");
                        } else {
                            out.print("Si, ");
                        }
                    %>
                    Tiempo: 
                    <%
                        out.print(tiempoFin - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Encontrado?: 
                    <%
                        tiempoInicio = 0;
                        tiempoFin = 0;
                        ListasDobles listaUsuarios4 = new ListasDobles();
                        for (i = 0; i < 10000000; i++) {
                            listaUsuarios4.insertarElemento(i + 1);
                        }
                        key = i;
                        tiempoInicio = System.nanoTime();
                        contador = listaUsuarios4.buscarElemento(key);
                        tiempoFin = System.nanoTime();
                        if (contador == -1) {
                            out.print("No, ");
                        } else {
                            out.print("Si, ");
                        }
                    %>
                    Tiempo: 
                    <%
                                out.print(tiempoFin - tiempoInicio);
                            }
                        }
                    %>
                </td>
            </tr>
        </table>
    </body>

</html>