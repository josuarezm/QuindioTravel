package Clases;

public class HashTable {
    public int[] arr;
    public int capacity;

    public HashTable(int capacity) {
        this.capacity = nextPrime(capacity);
        arr = new int[this.capacity];
    }

    public void insert(int elem) {
        arr[elem % capacity] = elem;
    }

    public boolean find(int elem) {
        return arr[elem % capacity] == elem && elem != 0;
    }

    @SuppressWarnings("empty-statement")
    private static int nextPrime(int n) {
        if (n % 2 == 0) {
            n++;
        }
        for (; !isPrime(n); n += 2);

        return n;
    }

    private static boolean isPrime(int n) {
        if (n == 2 || n == 3) {
            return true;
        }
        if (n == 1 || n % 2 == 0) {
            return false;
        }
        for (int i = 3; i * i <= n; i += 2) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
}