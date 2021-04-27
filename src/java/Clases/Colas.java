package Clases;

public class Colas {
    private int front, rear, size;
    private int capacity;
    private int[] arr;
    public Colas(int capacity) {
        this.capacity = capacity;
        front = this.size = 0;
        rear = capacity - 1;
        arr = new int[this.capacity];
    }
    public boolean isFull(Colas cola) {
        return (cola.size == cola.capacity);
    }
    public boolean enqueue(int key) {
        if (isFull(this)) {
            return false;
        }
        this.rear = (this.rear + 1) % this.capacity;
        this.arr[this.rear] = key;
        this.size = this.size + 1;
        return true;
    }
}
