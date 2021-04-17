<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
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
            
            Usuario usuario = new Usuario();
            usuario.setNombre("Pepito");
            usuario.setApellidos("Gomez");
            usuario.setNombreUsuario("ElPepe");
            usuario.setCorreo("pepitogomez@unal.edu.co");
            usuario.setContraseña("pepito123");
            usuario.setRol(false);
            
            int capacity = IDUsuarios.length;
            int key = Arreglos.cantidadElementos(IDUsuarios) + 1;
            int node = key - 1;
        %>
        <p>ID Usuario:
            <%
                usuario.setID(key);
                out.print(usuario.getID());
            %>
        </p>
        <p>Tiempo Registro:
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
                            } else if(i > 10000000 && i <= 100000000) {
                                out.print("Tiempo de 100000000 registros: " + (System.nanoTime() - tiempoInicio));
                            }
                        break;
                    }  
                }*/
                for(int i = 0; i < node; i++) {
                    out.print(IDUsuarios[i] + ", ");
                }
            %>
        </p>
    </body>
</html>
