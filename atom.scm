; takes one argument
; checks if argument is an atom 

(define atom?
    (lambda (x) 
        (and (not (pair? x)) (not (null? x)))))
