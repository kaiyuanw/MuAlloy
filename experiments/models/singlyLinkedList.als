module SinglyLinkedList

sig List {
  header : lone Node
}

sig Node {
  link: lone Node
}

pred Acyclic (l: List) {
  no l.header or some n: l.header.*link | no n.link
}

run Acyclic
