; recursive process
; (define (f n)
;     (if (< n 3)
;         n
;         (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


; iterative process

(define (f n) 
    (if (< n 3)
        n
        (f-iter 3 n 0 1 2)))

(define (f-iter counter max a b c)
    (if (> counter max )
        c
        (f-iter (+ counter 1) max b c (+ c (* 2 b) (* 3 a)) )))

(display (f 5))