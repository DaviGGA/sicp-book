(define (is-same? a b)
    (= (modulo a 2) (modulo b 2)))

(define (parity-iter first lst)
  (if (null? lst)
      '()
      (if (is-same? first (car lst))
          (cons (car lst) (parity-iter first (cdr lst)))
          (parity-iter first (cdr lst)))))      

(define (same-parity x . rest)
    (cons x (parity-iter x rest)))



(display (same-parity 1 2 3 4 5 6 7))
(newline)
(display (same-parity 2 3 4 5 6 7))
(newline)