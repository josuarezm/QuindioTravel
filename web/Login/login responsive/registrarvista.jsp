<!DOCTYPE html>
<%@page import="Clases.*"%>
<%@page import="java.sql.*"%>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Registrarse</title>
        <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
        <link rel="stylesheet" href="estilos.css">
    </head>

    <body>
        <form class="formulario" action="registrarvista.jsp" method="post">
            <h1>Registrarse</h1>
            <div class="contenedor">
                <div class="input-contenedor">
                    <i class="fas fa-user icon"></i>
                    <input type="text" placeholder="Nombres" name="nombres">
                </div>
                <div class="input-contenedor">
                    <i class="fas fa-user icon"></i>
                    <input type="text" placeholder="Apellidos" name="apellidos">
                </div>
                <div class="input-contenedor">
                    <i class="fas fa-user icon"></i>
                    <input type="text" placeholder="Nombre nuevo de usuario" name="nombreUsuario">
                </div>
                <div class="input-contenedor">
                    <i class="fas fa-envelope icon"></i>
                    <input type="text" placeholder="Correo Electronico" name="correo">
                </div>
                <div class="input-contenedor">
                    <i class="fas fa-key icon"></i>
                    <input type="password" placeholder="Contraseña" name="password1">
                </div>
                <div class="input-contenedor">
                    <i class="fas fa-key icon"></i>
                    <input type="password" placeholder="Confirmar contraseña" name="password2">
                </div>
                <br>
                <input type="submit" value="Continuar" class="button" name="registrarse">
                <p>Cuando te registras, aceptas nuestras condiciones de uso y políticas de privacidad.</p>
                <p>¿Ya tienes una cuenta?
                    <a class="link" href="loginvista.jsp"><br>Inicia Sesión</a>
                </p>
            </div>
        </form>
        <%
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://LAPTOP-QLRT8H66:1433;databaseName=QuindioTravel;integratedSecurity=true");
        %>
        <%
            if (request.getParameter("registrarse") != null) {
                String nombres = request.getParameter("nombres");
                String apellidos = request.getParameter("apellidos");
                String nombreUsuario = request.getParameter("nombreUsuario");
                String correo = request.getParameter("correo");
                String password1 = request.getParameter("password1");
                String password2 = request.getParameter("password2");
                int rol = 0;
                if (!nombres.isEmpty() && !apellidos.isEmpty() && !nombreUsuario.isEmpty() && !correo.isEmpty() && !password1.isEmpty()
                        && !password2.isEmpty() && password1.equals(password2)) {
                    PreparedStatement pst = con.prepareStatement("SELECT IDUsuario FROM Usuarios WHERE IDUsuario<=10000000");
                    ResultSet rs = pst.executeQuery();

                    int[] IDUsuarios = new int[10000000];
                    int i = 0;
                    while (rs.next()) {
                        IDUsuarios[i] = rs.getInt("IDUsuario");
                        i++;
                    }

                    pst = con.prepareStatement("INSERT INTO Usuarios (Nombres, Apellidos, NombreUsuario, Correo, Contraseña, Rol) "
                            + "VALUES ('" + nombres + "','" + apellidos + "','" + nombreUsuario + "','" + correo + "','" + password1 + "'," + rol + ")");
                    pst.executeUpdate();
                    con.close();
        %>
        <table style="border: 1px solid black">
            <th style="border: 1px solid black">10.000 Registros (ID a insertar: 10.001)</th>
            <th style="border: 1px solid black">100.000 Registros (ID a insertar: 100.001)</th>
            <th style="border: 1px solid black">1.000.000 Registros (ID a insertar: 1.000.001)</th>
            <th style="border: 1px solid black">10.000.000 Registros (ID a insertar: 10.000.001)</th>
            <tr style="border: 1px solid black">
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        long tiempoInicio = 0;
                        int[] IDUsuarios1 = new int[10001];
                        for (i = 0; i < 10000; i++) {
                            IDUsuarios1[i] = i + 1;
                        }
                        int capacity = IDUsuarios1.length;
                        int key = ++i;
                        int node = key - 1;
                        //Se mide el tiempo en nanosegundos, no obstante, se deben registrar varios refrescos de la página, para calcular el promedio
                        //Aunque, se requiere de comprobar la viabilidad para registros grandes.
                        tiempoInicio = System.nanoTime();
                        Arreglos.insertarElemento(IDUsuarios1, node, key, capacity);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        int[] IDUsuarios2 = new int[100001];
                        for (i = 0; i < 100000; i++) {
                            IDUsuarios2[i] = i + 1;
                        }
                        capacity = IDUsuarios2.length;
                        key = ++i;
                        node = key - 1;
                        tiempoInicio = System.nanoTime();
                        Arreglos.insertarElemento(IDUsuarios2, node, key, capacity);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        int[] IDUsuarios3 = new int[1000001];
                        for (i = 0; i < 1000000; i++) {
                            IDUsuarios3[i] = i + 1;
                        }
                        capacity = IDUsuarios3.length;
                        key = ++i;
                        node = key - 1;
                        tiempoInicio = System.nanoTime();
                        Arreglos.insertarElemento(IDUsuarios3, node, key, capacity);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        int[] IDUsuarios4 = new int[10000001];
                        for (i = 0; i < 10000000; i++) {
                            IDUsuarios4[i] = i + 1;
                        }
                        capacity = IDUsuarios4.length;
                        key = ++i;
                        node = key - 1;
                        tiempoInicio = System.nanoTime();
                        Arreglos.insertarElemento(IDUsuarios4, node, key, capacity);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
            </tr>

            <tr style="border: 1px solid black">
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        ListasDobles listaUsuarios1 = new ListasDobles();
                        for (i = 0; i < 10000; i++) {
                            listaUsuarios1.insertarElemento(i + 1);
                        }
                        key = ++i;
                        tiempoInicio = System.nanoTime();
                        listaUsuarios1.insertarElemento(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        ListasDobles listaUsuarios2 = new ListasDobles();
                        for (i = 0; i < 100000; i++) {
                            listaUsuarios2.insertarElemento(i + 1);
                        }
                        key = ++i;
                        tiempoInicio = System.nanoTime();
                        listaUsuarios2.insertarElemento(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        ListasDobles listaUsuarios3 = new ListasDobles();
                        for (i = 0; i < 1000000; i++) {
                            listaUsuarios3.insertarElemento(i + 1);
                        }
                        key = ++i;
                        tiempoInicio = System.nanoTime();
                        listaUsuarios3.insertarElemento(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                                ListasDobles listaUsuarios4 = new ListasDobles();
                                for (i = 0; i < 10000000; i++) {
                                    listaUsuarios4.insertarElemento(i + 1);
                                }
                                key = ++i;
                                tiempoInicio = System.nanoTime();
                                listaUsuarios4.insertarElemento(key);
                                out.print(System.nanoTime() - tiempoInicio);
                            }
                            response.setHeader("refresh", "20; url=http://localhost:8080/QuindioTravel/TravelWebsite/index.jsp");
                        }
                    %>
                </td>
            </tr>
        </table>
    </body>

</html>