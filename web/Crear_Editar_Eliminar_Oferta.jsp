<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Clases.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear_Editar_Eliminar Oferta</title>
    </head>
    <body>
        <%
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://LAPTOP-QLRT8H66:1433;databaseName=QuindioTravel;integratedSecurity=true");
        %>
        <form action="CrearOferta.jsp" method="post">
            <input type="text" name="nombre" placeholder="Nombre">
            <input type="text" name="lugar" placeholder="Lugar">
            <input type="text" name="precio" placeholder="Precio">
            <input type="text" name="hospedaje" placeholder="Hospedaje">
            <input type="text" name="alimentacion" placeholder="Alimentacion">
            <input type="text" name="atracciones" placeholder="Atracciones">
            <input type="text" name="otros" placeholder="Otros">
            <input type="email" name="correo" placeholder="Correo">
            <button type="submit" name="crearOferta">Crear Oferta</button>
        </form>
        <%
            if(request.getParameter("crearOferta") != null) {
                String nombre = request.getParameter("nombre");
                String lugar = request.getParameter("lugar");
                String precio = request.getParameter("precio");
                String hospedaje = request.getParameter("hospedaje");
                String alimentacion = request.getParameter("alimentacion");
                String atracciones = request.getParameter("atracciones");
                String otros = request.getParameter("otros");
                String correo = request.getParameter("correo");
                if(!nombre.isEmpty() && !lugar.isEmpty() && !precio.isEmpty() && !hospedaje.isEmpty() && !alimentacion.isEmpty()
                    && !atracciones.isEmpty() && !otros.isEmpty() && !correo.isEmpty()) {
                    PreparedStatement pst = con.prepareStatement("SELECT IDOferta FROM Ofertas WHERE IDOferta<=10000000");
                    ResultSet rs = pst.executeQuery();
                    int i = 0;
                    int[] IDOfertas = new int[20000000];
                    while(rs.next()) {
                        IDOfertas[i] = rs.getInt("IDOferta");
                        i++;
                    }
                    pst = con.prepareStatement("INSERT INTO Ofertas (Nombre, Lugar, Precio, Hospedaje, Alimentacion, Atracciones, Otros, Correo) "
                            + "VALUES ('"+nombre+"','"+lugar+"','"+precio+"','"+hospedaje+"','"+alimentacion+"','"+atracciones+"','"+otros+"','"+correo+"')");
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
                        int key = 0;
                        long tiempoInicio = 0;
                        Pilas pilaOfertas1 = new Pilas(20000);
                        for (i = 0; i < 10000; i++) {
                            pilaOfertas1.push(i+1);
                        }
                        key = ++i;
                        tiempoInicio = System.nanoTime();
                        pilaOfertas1.push(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        Pilas pilaOfertas2 = new Pilas(200000);
                        for (i = 0; i < 100000; i++) {
                            pilaOfertas2.push(i+1);
                        }
                        key = ++i;
                        tiempoInicio = System.nanoTime();
                        pilaOfertas2.push(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        Pilas pilaOfertas3 = new Pilas(2000000);
                        for (i = 0; i < 1000000; i++) {
                            pilaOfertas3.push(i+1);
                        }
                        key = ++i;
                        tiempoInicio = System.nanoTime();
                        pilaOfertas3.push(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        Pilas pilaOfertas4 = new Pilas(20000000);
                        for (i = 0; i < 10000000; i++) {
                            pilaOfertas4.push(i+1);
                        }
                        key = ++i;
                        tiempoInicio = System.nanoTime();
                        pilaOfertas4.push(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
            </tr>
            <tr style="border: 1px solid black">
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        Colas colaOfertas1 = new Colas(20000);
                        for (i = 0; i < 10000; i++) {
                            colaOfertas1.enqueue(IDOfertas[i]);
                        }
                        tiempoInicio = System.nanoTime();
                        key = ++i;
                        colaOfertas1.enqueue(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        Colas colaOfertas2 = new Colas(200000);
                        for (i = 0; i < 100000; i++) {
                            colaOfertas2.enqueue(IDOfertas[i]);
                        }
                        tiempoInicio = System.nanoTime();
                        key = ++i;
                        colaOfertas2.enqueue(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        Colas colaOfertas3 = new Colas(2000000);
                        for (i = 0; i < 1000000; i++) {
                            colaOfertas3.enqueue(IDOfertas[i]);
                        }
                        tiempoInicio = System.nanoTime();
                        key = ++i;
                        colaOfertas3.enqueue(key);
                        out.print(System.nanoTime() - tiempoInicio);
                    %>
                </td>
                <td style="border: 1px solid black">Tiempo: 
                    <%
                        Colas colaOfertas4 = new Colas(20000000);
                        for (i = 0; i < 10000000; i++) {
                            colaOfertas4.enqueue(IDOfertas[i]);
                        }
                        tiempoInicio = System.nanoTime();
                        key = ++i;
                        colaOfertas4.enqueue(key);
                        out.print((System.nanoTime() - tiempoInicio));
                    %>
                </td>
            </tr>
        <%            
                }
            }
        %>
        </table>
    </body>
</html>
