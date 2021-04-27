package Clases;

public class ListasDobles {
    Node head = null;
    Node tail = null;
    
    static class Node {
        int key;
        Node next;
        Node prev;
        Node(int key) {
            this.key = key;
        }  
    }

    public ListasDobles() {
    }
    
    public int insertarElemento(int key) {
        Node n = new Node(key);
        if(head == null) {  
            head = tail = n;  
            head.prev = null;  
            tail.next = null;  
        } else {    
            tail.next = n;  
            n.prev =tail;  
            tail = n;  
            tail.next = null;  
        }
        return n.key;
    }
    
    public int buscarElemento(int key) {  
        Node n = head;  
        if(head == null) {  
            return -1;  
        }  
        while(n != null) {  
            if(n.key == key) {  
                return 0; 
            }  
            n = n.next;    
        }  
        return -1;
    }
    
    public int cantidadElementos() {
        Node n = head;
        int cantidadElementos = 0;
        while (n != null) {
            cantidadElementos++;
            n = n.next;
        }
        return cantidadElementos;
    }
}
