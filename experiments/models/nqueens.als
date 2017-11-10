module nqueens

sig Queen {
  row : Int,
  col: Int
} 

fact {
  all q: Queen{
    q.row >= 0 && q.row < #Queen
	q.col >= 0 && q.col < #Queen
  }
}

pred nothreat(q1,q2 : Queen) {
  q1.row != q2.row
  q1.col != q2.col
  minus[q1.row, q2.row] != minus[q1.col,q2.col]
  minus[q1.row, q2.row] != minus[q2.col,q1.col]
}

pred valid {
  all q1,q2 : Queen | q1 != q2 => nothreat[q1, q2]
}

run valid for exactly 4 Queen
