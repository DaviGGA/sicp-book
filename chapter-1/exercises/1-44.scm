(load "./1-43.scm")

(define dx 0.1)

(define (avg a b c) (/ (+ a b c) 3))


(define (smooth f)
    (lambda (x) 
        (avg (f (- x dx)) (f x) (f (+ x dx)))))


; (display ((smooth square) 2))
; (newline)
; (display (((repeated smooth 5) square) 2))