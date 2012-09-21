void main() {

  /*
   *         (1)
   *        /   \
   *     (2)     (3)
   *    /   \   /   .
   *  (4)  (5) (6)  
   */
  Node node6 = new Node('6');
  Node node5 = new Node('5');
  Node node4 = new Node('4');
  Node node3 = new Node('3', node6);
  Node node2 = new Node('2', node4, node5);
  Node node1 = new Node('1', node2, node3);
  
 printTree(node1); 
}

void printTree(Node node) {
  _printTree([node]);
}

void _printTree(List<Node> nodes) {
  
  if(nodes.isEmpty()){
    return;
  }
  else {
    List<Node> nodesToProcess = [];
    for(int i = 0; i<nodes.length; i++) {
      Node node = nodes[i];
      print(node.id);
      
      if(node.left != null) {
        nodesToProcess.addLast(node.left);
      }
      if(node.right != null) {
        nodesToProcess.addLast(node.right);
      }
    }
    _printTree(nodesToProcess);
  }
}

class Node {
  String id;
  Node left;
  Node right;
  Node(String this.id, [Node this.left, Node this.right]) {}
}

