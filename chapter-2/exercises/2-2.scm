(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (make-segment a b) (cons a b))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (midpoint-segment segment)
    (make-point 
        (/ (sum-segment-point x-point segment) 2) 
        (/ (sum-segment-point y-point segment) 2)))

(define (sum-segment-point  point segment)
    (+ (point (start-segment segment)) (point (end-segment segment))))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))


(print-point 
    (midpoint-segment 
        (make-segment
            (make-point 2 5) (make-point 6 1))))

