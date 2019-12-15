; subst replaces either the first occurrence of o1
; or the first occurrence of o2 by new

(define subst2
    (lambda (new o1 o2 lat)
        (cond 
            ((null? lat) (quote ()))
            (else (cond 
                ((eq? (car lat) o1) (cons new (cdr lat)))
                ((eq? (car lat) o2) (cons new (cdr lat)))
                (else
                    (cons (car lat) (subst new old (cdr lat)))))))))
