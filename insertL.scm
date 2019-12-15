; It takes three arguments: the atoms new and old, and a lat. 
; The function insertR builds a lat 
; with new inserted to the lef of the first occurrence of old in lat

(define insertL
    (lambda (new old lat)
        (cond 
            ((null? lat) (quote ()))
            (else (cond
                ((eq? (car lat) old) (cons new lat))
            (else (cons (car lat)
                (insertL new old (cdr lat))))))))
