package Clases;

public class BSTNode {
    public int key;
    public int elem;
    public BSTNode parent;
    public BSTNode leftChild;
    public BSTNode rightChild;
    
    public BSTNode(int key, int elem) {
        this.key = key;
        this.elem = elem;
        this.parent = null;
        this.leftChild = null;
        this.rightChild = null;
    }
}
