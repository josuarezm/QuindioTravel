package Clases;

public class BSTree {
    BSTNode root;
    
    public BSTree() {
    
    }
    
    public BSTree(BSTNode root) {
        this.root = root;
    }
    
    public String find(int key) {
        BSTNode searchNode = root;
        while(searchNode != null) {
            int keyVisit = searchNode.key;
            if(key == keyVisit) {
                return ("Oferta encontrada: " + searchNode.elem + ". ");
            } else if (key < keyVisit) {
                searchNode = searchNode.leftChild;
            } else {
                searchNode = searchNode.rightChild;
            }
        }
        return ("Oferta con llave " + key + " no existe. ");
    }
    
    public void insert(int key, int elem) {
        BSTNode newNode = new BSTNode(key,elem);
        if(root == null) {
            root = newNode;
        } else {
            insert(newNode,root);
        }
    }
    
    public void insert(BSTNode newNode, BSTNode node) {
        int key = newNode.key;
        if(key == node.key) {
            System.out.println(key + " ya existe. No se aceptan duplicados.");
            return;
        }
        if(key < node.key) {
            if(node.leftChild == null) {
                node.leftChild = newNode;
                newNode.parent = node;
                System.out.println(node.key);
            } else {
                insert(newNode,node.leftChild);
            }
        } else {
            if(node.rightChild == null) {
                node.rightChild = newNode;
                newNode.parent = node;
                System.out.println(node.key);
            } else {
                insert(newNode,node.rightChild);
            }
        }
    }
}
