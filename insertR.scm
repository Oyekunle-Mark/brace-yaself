; It takes three arguments: the atoms new and old, and a lat. 
; The function insertR builds a lat 
; with new inserted to the right of the first occurrence of old

(define insertR
    (lambda (new old lat)
        (cond 
            ((null? lat) (quote ()))
            ((eq? (car lat) old) (cons old
                (cons new (cdr lat))))
            (else (cons (car lat)
                (insertR new old (cdr lat)))))))
