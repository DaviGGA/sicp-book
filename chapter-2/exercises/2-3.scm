(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (make-segment a b) (cons a b))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

; (define (rectangle p w h )
;     (cons p (cons w h)))

; (define (start-point rec) (car rec))
; (define (rec-width rec) (cadr rec))
; (define (rec-height rec) (cddr rec))

(define (rectangle c1 c2) (cons c1 c2))

(define (rec-width rec)
    (abs (- (x-point (car rec)) (x-point (cdr rec)))))

(define (rec-height rec)
    (abs (- (y-point (car rec)) (y-point (cdr rec)))))

(define (area rec) 
    (* (rec-width rec) (rec-height rec)))

(define (perimeter rec)
    (+ (* (rec-width rec) 2) (* (rec-height rec) 2)))