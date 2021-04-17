package Clases;

public class Arreglos {
    
    public static int cantidadElementos(int arr[]) {
        int cantidadElementos = 0;
        for(int node : arr) {
            if(node != 0) {
                cantidadElementos++; 
            }
        }
        return cantidadElementos;
    }
    
    public static int insertarElemento(int arr[], int node, int key, int capacity) {
        if (node >= capacity) {
           return node;
        }
        arr[node] = key;
        return (node + 1);
    }
    
    public static int buscarElemento(int arr[], int cantidadElementos, int key) {
        for (int i = 0; i < cantidadElementos; i++)
            if (arr[i] == key) {
                return i;
            }
        return -1;
    }
}
