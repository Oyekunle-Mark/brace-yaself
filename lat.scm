; lat? looks at each S-expression in a list, in
; turn, and asks if each S-expression is an atom, 
; until it runs out of S-expressions.

(define lat?
    (lambda (l)
        (cond
            ((null? l) #t)
            ((atom? (car l)) (lat? (cdr l)))
            (else #f))))
