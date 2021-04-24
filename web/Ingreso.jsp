<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Clases.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso</title>
    </head>
    <body>
        <%
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://LAPTOP-QLRT8H66:1433;databaseName=QuindioTravel;integratedSecurity=true");
        %>
        <%
            int[] IDUsuarios = new int[100000000];
            IDUsuarios[0] = 1;
            IDUsuarios[1] = 2;
            IDUsuarios[2] = 3;
            IDUsuarios[3] = 4;
            IDUsuarios[4] = 5;
            IDUsuarios[5] = 6;
            IDUsuarios[6] = 7;
            IDUsuarios[7] = 8;
            IDUsuarios[8] = 9;
            IDUsuarios[9] = 10;
            IDUsuarios[10] = 11;
            IDUsuarios[11] = 12;
            
            Usuario usuario = new Usuario();
            usuario.setNombreUsuario("ElPepe");
            usuario.setContraseña("pepito123");
            usuario.setID(12);
            
            int key = usuario.getID();
            int cantidadElementos = Arreglos.cantidadElementos(IDUsuarios);
        %>
        <p>ID a buscar:
            <%
                out.print(usuario.getID());
            %>
        </p>
        <p>Encontrado?:
            <%
                long tiempoInicio = System.nanoTime();
                int contador = Arreglos.buscarElemento(IDUsuarios, cantidadElementos, key);
                long tiempoFin = System.nanoTime();
                if(contador == -1) {
                    out.print("Usuario o contraseña incorrectos");
                } else {
                    out.print("Bienvenido/a");
                }
            %>
        </p>
        <p>Tiempo de ejecucion:
            <%
                out.print(tiempoFin - tiempoInicio);
            %>
        </p>
    </body>
</html>
