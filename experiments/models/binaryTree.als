module BinaryTree

sig Node {
  left: set Node,
  right: set Node
}

fact {
  all n : Node | lone n.left && lone n.right
}

pred Acyclic {
  all n : Node {
    n !in n.^(left + right) 
    lone n.~(left + right) 
    no n.left & n.right 
  }
}

run Acyclic
