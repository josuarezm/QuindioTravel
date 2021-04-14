<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Scanner"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <%
            int[] arr = new int[]{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
        %>
        <p>ID a encontrar:
            <%
                int ID = 17;
                out.print(ID);
            %>
        </p>
        <p>Tiempo:
            <%
                //Se mide el tiempo en nanosegundos, no obstante, se deben registrar varios refrescos de la página, para calcular el promedio
                //Aunque, se requiere de comprobar la viabilidad para registros grandes.
                long tiempoInicio = System.nanoTime();
                for(int i = 0; i < 100000000; i++) {
                    if(arr[i] == ID) {
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
                }
            %>
        </p>
    </body>
</html>
