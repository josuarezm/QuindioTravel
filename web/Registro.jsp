<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Clases.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <%
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://LAPTOP-QLRT8H66:1433;databaseName=QuindioTravel;integratedSecurity=true");
        %>
        <form action="Registro.jsp" method="post">
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
        </form>
        <%
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
                    PreparedStatement pst = con.prepareStatement("SELECT * FROM Usuarios");
                    ResultSet rs = pst.executeQuery();
                    int[] IDUsuarios = new int[20000000];
                    int i = 0;
                    while(rs.next()) {
                        IDUsuarios[i] = rs.getInt("IDUsuario");
                        i++;
                    }

                    Usuario usuario = new Usuario();
                    usuario.setNombres(nombres);
                    usuario.setApellidos(apellidos);
                    usuario.setNombreUsuario(nombreUsuario);
                    usuario.setCorreo(correo);
                    usuario.setContraseña(password1);
                    usuario.setRol(rol);
                    
                    pst = con.prepareStatement("INSERT INTO Usuarios (Nombres, Apellidos, NombreUsuario, Correo, Contraseña, Rol) "
                            + "VALUES ('"+usuario.getNombres()+"','"+usuario.getApellidos()+"','"+usuario.getNombreUsuario()+"','"+
                            usuario.getCorreo()+"','"+usuario.getContraseña()+"',"+usuario.getRol()+")");
                    pst.executeUpdate();
                    con.close();  
        %>
        <h1>10000000 Registros:</h1>
        <p>ID Usuario:
            <%
                    int capacity = IDUsuarios.length;  
                    int key = Arreglos.cantidadElementos(IDUsuarios) + 1;
                    int node = key - 1;
                    usuario.setID(key);
                    out.print(usuario.getID());
            %>
            Tiempo Registro:
            <%
                    //Se mide el tiempo en nanosegundos, no obstante, se deben registrar varios refrescos de la página, para calcular el promedio
                    //Aunque, se requiere de comprobar la viabilidad para registros grandes.
                    long tiempoInicio = System.nanoTime();
                    node = Arreglos.insertarElemento(IDUsuarios, node, key, capacity);
                    out.println(System.nanoTime() - tiempoInicio);
                    
                   
                    /*for(int i = 0; i < node; i++) {
                        if(IDUsuarios[i] == usuario.getID()) {
                            out.print(System.nanoTime() - tiempoInicio); 
                                if(i <= 10000) {
                                    out.print("Tiempo de 10000 registros: " + (System.nanoTime() - tiempoInicio));
                                } else if(i > 10000 && i <= 100000) {
                                    out.print("Tiempo de 100000 registros: " + (System.nanoTime() - tiempoInicio));
                                } else if(i > 100000 && i <= 1000000) {
                                    out.print("Tiempo de 1000000 registros: " + (System.nanoTime() - tiempoInicio));
                                } else if(i > 1000000 && i <= 10000000) {
                                    out.print("Tiempo de 10000000 registros: " + (System.nanoTime() - tiempoInicio));
                                }
                            break;
                        }  
                    }*/
                    for(i = 0; i < node; i++) {
                        out.print(IDUsuarios[i] + ", ");
                    }
                    response.setHeader("refresh", "2; url=index.jsp");
                }
            }
             
            %>
        </p>
            
        </p>
    </body>
</html>
