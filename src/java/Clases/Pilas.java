package Clases;

public class Pilas {
    private int top;
    private int capacity;
    private int[] arr;
    
    public Pilas(int capacity) {
        top = -1;
        this.capacity = capacity;
        arr = new int[this.capacity];
    }
    
    public boolean push(int key) {
        if (top >= (this.capacity - 1)) {
          return false;
        } else {
          arr[++top] = key;
          return true;
        }
    }
}
