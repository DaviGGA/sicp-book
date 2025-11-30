(load "../code/rat.scm")

(define (make-rat n d)
    (let ((g (gcd n d)))
    (cond 
        ((and (< n 0) (< d 0)) 
           (cons (/ (* n -1) g) (/ (* d -1) g)))
        ((and (< n 0) (> d 0)) 
            (cons (/ n g) (/ d g)))
        ((and (> n 0) (< d 0)) 
            (cons (/ (* n -1) g) (/ (* d -1) g)))
        (else (cons (/ n g) (/ d g))))))
    

(print-rat (make-rat 2 3))
(print-rat (make-rat -2 3))
(print-rat (make-rat 2 -3))
(print-rat (make-rat -2 -3))