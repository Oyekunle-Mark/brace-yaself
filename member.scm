; member takes two arguments
; checks if the S-expression which is the first argument
; is present in the list which is the second argument

(define member?
    (lambda (a l)
        (cond 
            ((null? l) #f)
            (else or (eq? (car l) a) (member? a (cdr l))))))
