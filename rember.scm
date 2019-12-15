; rember stands for remove member
; it takes two arguments
; returns a new list which does not have the first 
; occurence of the first S-expression

(define rember
    (lambda (a lat)
        (cond 
            ((null? lat) (quote ()))
            ((eq? (car lat) a) (cdr lat))
            (else (cons (car lat)
                (rember a (cdr lat)))))))
