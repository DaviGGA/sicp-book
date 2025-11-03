(define (even? n)
    (= (remainder n 2) 0))

(define (expmod base exp m)
    (cond ((= exp 0) 1)
        ((even? exp)
        (remainder
            (square (expmod base (/ exp 2) m))
            m))
        (else
            (remainder
                (* base (expmod base  (- exp 1) m))
                m))))

(define (fermat-test count n)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it count))

(define (foo n ) (foo-iter (- n 1) n))

(define (foo-iter count n)
    (cond ((= count 0) "passes fermat")
        ((fermat-test count n) (foo-iter (- count 1) n))
        (else "does not pass fermat")))

(display (foo 561))
(newline)
(display (foo 1105))
(newline)
(display (foo 1729))
(newline)
