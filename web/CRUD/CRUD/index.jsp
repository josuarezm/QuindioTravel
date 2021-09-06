<!DOCTYPE html>
<%@page import="Clases.*"%>
<%@page import="java.sql.*"%>
<html>

    <head>
        <title>
            Gestión
        </title>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>

    <body>
        <%
            HttpSession sesion = request.getSession();
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://LAPTOP-QLRT8H66:1433;databaseName=QuindioTravel;integratedSecurity=true");
        %>
        <table>
            <tr>
                <td>
                    <form action="index.jsp" method="post">
                        <div>
                            <label>Nombre Completo</label><label class="validation-error hide" id="fullNameValidationError">Este campo es requerido.</label>
                            <input type="text" name="nombre" id="fullName">
                        </div>
                        <div>
                            <label>Lugar</label>
                            <input type="text" name="lugar" id="empCode">
                        </div>
                        <div>
                            <label>Precio</label>
                            <input type="text" name="precio" id="salary">
                        </div>
                        <div>
                            <label>Hospedaje</label>
                            <input type="text" name="hospedaje" id="city">
                        </div>
                        <div>
                            <label>Alimentación</label>
                            <input type="text" name="alimentacion" id="qw">
                        </div>
                        <div>
                            <label>Atracciones</label>
                            <input type="text" name="atracciones" id="er">
                        </div>
                        <div>
                            <label>Otros</label>
                            <input type="text" name="otros" id="ty">
                        </div>
                        <div>
                            <label>Contacto</label>
                            <input type="text" name="correo" id="ui">
                        </div>
                        <div class="form-action-buttons">
                            <input type="submit" value="Añadir" name="anadir">
                        </div>
                    </form>
                </td>
                <td>
                    <div class="buscar">
                        <form action="index.jsp" method="post">
                            <div class="form-row">
                                <input type="text" class="col" name="buscarTxt">
                                <button type="submit" name="buscar">Buscar</button>
                            </div>
                        </form>
                    </div>
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
                            <tr>
                                <%
                                    PreparedStatement pst = con.prepareStatement("SELECT * FROM Ofertas WHERE IDOferta = " + sesion.getAttribute("IDOferta") + " AND " + sesion.getAttribute("IDOferta") + " <= 30000");
                                    ResultSet rs = pst.executeQuery();
                                    if (rs.next()) {
                                %>
                                <td><%out.print(rs.getString("Nombre"));%></td>
                                <td><%out.print(rs.getString("Lugar"));%></td>
                                <td><%out.print(rs.getString("Precio"));%></td>
                                <td><%out.print(rs.getString("Hospedaje"));%></td>
                                <td><%out.print(rs.getString("Alimentacion"));%></td>
                                <td><%out.print(rs.getString("Atracciones"));%></td>
                                <td><%out.print(rs.getString("Otros"));%></td>
                                <td><%out.print(rs.getString("Correo"));
                                    }%></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>
        <%
            if (request.getParameter("anadir") != null) {
                String nombre = request.getParameter("nombre");
                String lugar = request.getParameter("lugar");
                String precio = request.getParameter("precio");
                String hospedaje = request.getParameter("hospedaje");
                String alimentacion = request.getParameter("alimentacion");
                String atracciones = request.getParameter("atracciones");
                String otros = request.getParameter("otros");
                String correo = request.getParameter("correo");
                if (!nombre.isEmpty() && !lugar.isEmpty() && !precio.isEmpty() && !hospedaje.isEmpty() && !alimentacion.isEmpty()
                        && !atracciones.isEmpty() && !otros.isEmpty() && !correo.isEmpty()) {
                    pst = con.prepareStatement("SELECT IDOferta FROM Ofertas WHERE IDOferta<=10000000");
                    rs = pst.executeQuery();
                    int i = 0;
                    int[] IDOfertas = new int[20000000];
                    while (rs.next()) {
                        IDOfertas[i] = rs.getInt("IDOferta");
                        i++;
                    }
                    pst = con.prepareStatement("INSERT INTO Ofertas (Nombre, Lugar, Precio, Hospedaje, Alimentacion, Atracciones, Otros, Correo) "
                            + "VALUES ('" + nombre + "','" + lugar + "','" + precio + "','" + hospedaje + "','" + alimentacion + "','" + atracciones + "','" + otros + "','" + correo + "')");
                    pst.executeUpdate();
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
                            pilaOfertas1.push(i + 1);
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
                            pilaOfertas2.push(i + 1);
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
                            pilaOfertas3.push(i + 1);
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
                            pilaOfertas4.push(i + 1);
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
        <script src="script.js"></script>
    </body>
    <%
        if (request.getParameter("buscar") != null) {
            String nombreOferta = request.getParameter("buscarTxt");
            pst = con.prepareStatement("SELECT TOP 1 * FROM Ofertas WHERE Nombre='" + nombreOferta + "' AND IDOferta <= 30000");
            rs = pst.executeQuery();
            Oferta oferta = new Oferta();
            if (rs.next()) {
                oferta.setID(rs.getInt("IDOferta"));
                oferta.setNombre(nombreOferta);
            } else {
                oferta.setID(0);
            }
            pst = con.prepareStatement("SELECT * FROM Ofertas WHERE IDOferta <= 30000", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs1 = pst.executeQuery();
            BSTree tree = new BSTree();
            int contador = 0;
            long tiempoInicio = 0;
            long tiempoFin = 0;
            tiempoInicio = System.nanoTime();
            while (rs1.next() && contador <= 30) {
                tree.insert(rs1.getInt("IDOferta"), rs1.getInt("IDOferta"));
                contador++;
            }
            tiempoFin = System.nanoTime();
    %>
    <h1>Inserción BSTree vs HashTable</h1>
    <table>
        <th>Estructura de Dato</th>
        <th>Tiempo 30 elementos</th>
        <th>Tiempo 300 elementos</th>
        <th>Tiempo 3000 elementos</th>
        <th>Tiempo 30000 elementos</th>
        <tr>
            <td>BSTree</td>
            <td><% out.print(tiempoFin-tiempoInicio); %></td>
    <%
            tiempoInicio = System.nanoTime();
            while (rs1.next() && contador <= 300) {
                tree.insert(rs1.getInt("IDOferta"), rs1.getInt("IDOferta"));
                contador++;
            }
            tiempoFin = System.nanoTime();
    %>
        <td><% out.print(tiempoFin-tiempoInicio); %></td>
    <%
            tiempoInicio = System.nanoTime();
            while (rs1.next() && contador <= 3000) {
                tree.insert(rs1.getInt("IDOferta"), rs1.getInt("IDOferta"));
                contador++;
            }
            tiempoFin = System.nanoTime();
    %>
        <td><% out.print(tiempoFin-tiempoInicio); %></td>
    <%
            tiempoInicio = System.nanoTime();
            while (rs1.next() && contador <= 30000) {
                tree.insert(rs1.getInt("IDOferta"), rs1.getInt("IDOferta"));
                contador++;
            }
            tiempoFin = System.nanoTime();
    %>
        <td><% out.print(tiempoFin-tiempoInicio); %></td>
        </tr>
    <%
            contador = 0;
            out.println("BSTree-> ");
            if (oferta.getID() <= 30) {
                tiempoInicio = System.nanoTime();
                out.println("30 nodos: " + tree.find(oferta.getID()) + (System.nanoTime() - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            } else if (oferta.getID() <= 300) {
                tiempoInicio = System.nanoTime();
                out.println("300 nodos: " + tree.find(oferta.getID()) + (System.nanoTime() - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            } else if (oferta.getID() <= 3000) {
                tiempoInicio = System.nanoTime();
                out.println("3000 nodos: " + tree.find(oferta.getID()) + (System.nanoTime() - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            } else {
                tiempoInicio = System.nanoTime();
                out.println("30000 nodos: " + tree.find(oferta.getID()) + (System.nanoTime() - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            }
            HashTable hash = new HashTable(39000);
            rs1.beforeFirst();
            tiempoInicio = System.nanoTime();
            while (rs1.next() && contador <= 30) {
                hash.insert(rs1.getInt("IDOferta"));
                contador++;
            }
            tiempoFin = System.nanoTime();
    %>
        <tr>
            <td>HashTable</td>
            <td><% out.print(tiempoFin-tiempoInicio); %></td>
    <%
            tiempoInicio = System.nanoTime();
            while (rs1.next() && contador <= 300) {
                hash.insert(rs1.getInt("IDOferta"));
                contador++;
            }
            tiempoFin = System.nanoTime();
    %>
        <td><% out.print(tiempoFin-tiempoInicio); %></td>
    <%
            tiempoInicio = System.nanoTime();
            while (rs1.next() && contador <= 3000) {
                hash.insert(rs1.getInt("IDOferta"));
                contador++;
            }
            tiempoFin = System.nanoTime();
    %>
        <td><% out.print(tiempoFin-tiempoInicio); %></td>
    <%
            tiempoInicio = System.nanoTime();
            while (rs1.next() && contador <= 30000) {
                hash.insert(rs1.getInt("IDOferta"));
                contador++;
            }
            tiempoFin = System.nanoTime();
    %>
        <td><% out.print(tiempoFin-tiempoInicio); %></td>
        </tr>
    </table>
    <%
            out.println("HashTable-> ");
            tiempoInicio = System.nanoTime();
            if (oferta.getID() <= 30 && hash.find(oferta.getID())) {
                tiempoFin = System.nanoTime();
                out.println("30 nodos: " + "oferta encontrada hash. " + (tiempoFin - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            } else if (oferta.getID() <= 300 && hash.find(oferta.getID())) {
                tiempoFin = System.nanoTime();
                out.println("300 nodos: " + "oferta encontrada hash. " + (tiempoFin - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            } else if (oferta.getID() <= 3000 && hash.find(oferta.getID())) {
                tiempoFin = System.nanoTime();
                out.println("3000 nodos: " + "oferta encontrada hash. " + (tiempoFin - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            } else if (hash.find(oferta.getID())) {
                tiempoFin = System.nanoTime();
                out.println("30000 nodos: " + "oferta encontrada hash. " + (tiempoFin - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            } else {
                tiempoFin = System.nanoTime();
                out.println("oferta NO encontrada hash. " + (tiempoFin - tiempoInicio));
                sesion.setAttribute("IDOferta", oferta.getID());
                response.setHeader("refresh", "20; url=index.jsp");
            }
        }
    %>
</html>