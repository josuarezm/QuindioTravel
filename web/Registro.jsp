<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="Estilos.css">
        <title>Registro</title>
    </head>
    <body>
        <div class="contenedorRegistro">
            <form action="Registro.jsp">
                <div class="form-group">
                    <label for="email">Email address:</label>
                    <input type="email" class="form-control" placeholder="Enter email" id="email">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" placeholder="Enter password" id="pwd">
                </div>
                <div class="form-group form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox"> Remember me
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <%/*
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://LAPTOP-QLRT8H66:1433;databaseName=QuindioTravel;integratedSecurity=true");*/
        %>
        <!--<form action="Registro.jsp" method="post">
            <input type="text" name="nombres" placeholder="Nombres">
            <input type="text" name="apellidos" placeholder="Apellidos">
            <input type="text" name="nombreUsuario" placeholder="Nombre de Usuario">
            <input type="email" name="correo" placeholder="Correo">
            <input type="password" name="password1" placeholder="Contraseña">
            <input type="password" name="password2" placeholder="Confirmar contraseña">
            <select name="rol">
                <option>Cliente</option>
                <option>Asociado</option>
            </select>
            <button type="submit" name="registrarse">Registrarse</button>
        </form>-->
        <%/*
            if(request.getParameter("registrarse") != null) {
                String nombres = request.getParameter("nombres");
                String apellidos = request.getParameter("apellidos");
                String nombreUsuario = request.getParameter("nombreUsuario");
                String correo = request.getParameter("correo");
                String password1 = request.getParameter("password1");
                String password2 = request.getParameter("password2");
                int rol = 0;
                if(request.getParameter("rol").equals("Asociado")) {
                    rol = 1;
                }
                if(!nombres.isEmpty() && !apellidos.isEmpty() && !nombreUsuario.isEmpty() && !correo.isEmpty() && !password1.isEmpty()
                    && !password2.isEmpty() && password1.equals(password2)) {
                    PreparedStatement pst = con.prepareStatement("SELECT IDUsuario FROM Usuarios WHERE IDUsuario<=10000000");
                    ResultSet rs = pst.executeQuery();
                    
                    int[] IDUsuarios = new int[10000000];
                    int i = 0;
                    while(rs.next()) {
                        IDUsuarios[i] = rs.getInt("IDUsuario");
                        i++;
                    }
                                      
                    pst = con.prepareStatement("INSERT INTO Usuarios (Nombres, Apellidos, NombreUsuario, Correo, Contraseña, Rol) "
                            + "VALUES ('"+nombres+"','"+apellidos+"','"+nombreUsuario+"','"+correo+"','"+password1+"',"+rol+")");
                    pst.executeUpdate();
                    con.close();*/  
        %>
        <!--<table style="border: 1px solid black">
            <th style="border: 1px solid black">10.000 Registros (ID a insertar: 10.001)</th>
            <th style="border: 1px solid black">100.000 Registros (ID a insertar: 100.001)</th>
            <th style="border: 1px solid black">1.000.000 Registros (ID a insertar: 1.000.001)</th>
            <th style="border: 1px solid black">10.000.000 Registros (ID a insertar: 10.000.001)</th>
            <tr style="border: 1px solid black">
                <td style="border: 1px solid black">Tiempo: 
                    <%/*
                    long tiempoInicio = 0;
                    int[] IDUsuarios1 = new int[10001];
                    for(i = 0; i < 10000; i++) {
                        IDUsuarios1[i] = i+1;
                    }
                    int capacity = IDUsuarios1.length;
                    int key = ++i;
                    int node = key - 1;
                    //Se mide el tiempo en nanosegundos, no obstante, se deben registrar varios refrescos de la página, para calcular el promedio
                    //Aunque, se requiere de comprobar la viabilidad para registros grandes.
                    tiempoInicio = System.nanoTime();
                    Arreglos.insertarElemento(IDUsuarios1, node, key, capacity);
                    out.print(System.nanoTime() - tiempoInicio);*/
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%/*
                    int[] IDUsuarios2 = new int[100001];
                    for(i = 0; i < 100000; i++) {
                        IDUsuarios2[i] = i+1;
                    }
                    capacity = IDUsuarios2.length;
                    key = ++i;
                    node = key - 1;
                    tiempoInicio = System.nanoTime();
                    Arreglos.insertarElemento(IDUsuarios2, node, key, capacity);
                    out.print(System.nanoTime() - tiempoInicio);*/
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%/*
                    int[] IDUsuarios3 = new int[1000001];
                    for(i = 0; i < 1000000; i++) {
                        IDUsuarios3[i] = i+1;
                    }
                    capacity = IDUsuarios3.length;
                    key = ++i;
                    node = key - 1;
                    tiempoInicio = System.nanoTime();
                    Arreglos.insertarElemento(IDUsuarios3, node, key, capacity);
                    out.print(System.nanoTime() - tiempoInicio);*/
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%/*
                    int[] IDUsuarios4 = new int[10000001];
                    for(i = 0; i < 10000000; i++) {
                        IDUsuarios4[i] = i+1;
                    }
                    capacity = IDUsuarios4.length;
                    key = ++i;
                    node = key - 1;
                    tiempoInicio = System.nanoTime();
                    Arreglos.insertarElemento(IDUsuarios4, node, key, capacity);
                    out.print(System.nanoTime() - tiempoInicio);*/
                    %>
                </td>
            </tr>
            
            <tr style="border: 1px solid black">
                <td style="border: 1px solid black">Tiempo: 
                    <%/*
                    ListasDobles listaUsuarios1 = new ListasDobles();
                    for(i = 0; i < 10000; i++) {
                        listaUsuarios1.insertarElemento(i+1);
                    }
                    key = ++i;
                    tiempoInicio = System.nanoTime();
                    listaUsuarios1.insertarElemento(key);
                    out.print(System.nanoTime() - tiempoInicio);*/
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%/*
                    ListasDobles listaUsuarios2 = new ListasDobles();
                    for(i = 0; i < 100000; i++) {
                        listaUsuarios2.insertarElemento(i+1);
                    }
                    key = ++i;
                    tiempoInicio = System.nanoTime();
                    listaUsuarios2.insertarElemento(key);
                    out.print(System.nanoTime() - tiempoInicio);*/
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%/*
                    ListasDobles listaUsuarios3 = new ListasDobles();
                    for(i = 0; i < 1000000; i++) {
                        listaUsuarios3.insertarElemento(i+1);
                    }
                    key = ++i;
                    tiempoInicio = System.nanoTime();
                    listaUsuarios3.insertarElemento(key);
                    out.print(System.nanoTime() - tiempoInicio);*/
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%/*
                    ListasDobles listaUsuarios4 = new ListasDobles();
                    for(i = 0; i < 10000000; i++) {
                        listaUsuarios4.insertarElemento(i+1);
                    }
                    key = ++i;
                    tiempoInicio = System.nanoTime();
                    listaUsuarios4.insertarElemento(key);
                    out.print(System.nanoTime() - tiempoInicio);
                }
            }*/
                    %>
                </td>
            </tr>
        </table>-->
    </body>
</html>
