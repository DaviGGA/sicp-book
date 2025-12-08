(define (pair a b)
    (* (expt 2 a) (expt 3 b)))

(define (a pair)
    (divisible-n-times pair 2 0))

(define (b pair)
    (divisible-n-times pair 3 0))

(define (divisible-n-times n x times)
    (if (= (remainder n x) 0)
        (divisible-n-times (/ n x) x (+ times 1))
        times))

(display (pair 2 3)) ;; 108
(newline)
(display (a (pair 2 3))) ;; 2
(newline)
(display (b (pair 2 3))) ;; 3
(newline)