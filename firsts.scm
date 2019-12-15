; firsts takes a list as argument l
; returns a new list with the first S-expression
; in the list in l

(define firsts
    (lambda (l)
        (cond 
            ((null? l) (quote ()))
            (else (cons (car (car l))
                (firsts (cdr l)))))))