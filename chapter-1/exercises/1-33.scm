(load "../code/fast-prime.scm")

(define (filtered-accumulate predicate combiner null-value term a next b)
  (cond
    ((> a b)
     null-value)

    ((predicate a)
     (combiner (term a)
               (filtered-accumulate predicate combiner null-value
                                    term (next a) next b)))

    (else
     (filtered-accumulate predicate combiner null-value
                          term (next a) next b))))

(define (square-term a) (* a a))
(define (square-next a) (+ a 1))
(define (prime? a) (fast-prime? a 3))
(define (sum-square-prime a b) ;; a)
  (filtered-accumulate prime? + 0 square-term a square-next b))

(display (sum-square-prime 2 10))