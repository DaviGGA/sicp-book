(define (iterative-improvement is-good? improve)
    (lambda (guess) (iter is-good? improve guess)))
        

(define (iter is-good? improve guess)
    (if (is-good? guess)
        guess
        (iter is-good? improve (improve guess))))

(define (improve x)
    (lambda (guess) (average guess (/ x guess))))

(define (good-enough? x)
    (lambda (guess) (< (abs (- (square guess) x)) 0.001)))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt n) ((iterative-improvement (good-enough? n) (improve n)) n))

(display (sqrt 16.0))