module handshake

sig Person {spouse: Person, shaken: set Person}
one sig Jocelyn, Hilary extends Person {}

fact ShakingProtocol {
    all p: Person | no (p + p.spouse) & p.shaken
    all p, q: Person | p in q.shaken => q in p.shaken
    }

fact Spouses {
    all p, q: Person | p!=q => {
        p.spouse = q => q.spouse = p
        p.spouse != q.spouse
        }
    all p: Person {
        p.spouse.spouse = p
        p != p.spouse
        }
    }

pred Puzzle {
    all p,q: Person - Jocelyn | p!=q => #p.shaken != #q.shaken
    Hilary.spouse = Jocelyn
    }

run Puzzle for exactly 10 Person, 5 int expect 1
run Puzzle for exactly 12 Person, 5 int expect 1
run Puzzle for exactly 14 Person, 5 int expect 1
run Puzzle for exactly 16 Person, 6 int expect 1
