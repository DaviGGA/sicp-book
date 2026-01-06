(define (make-mobile left right)
    (list left right))

(define (make-branch length structure)
    (list length structure))

(define (left-branch mobile)
    (car mobile))

(define (right-branch mobile)
    (cadr mobile))

(define (branch-length branch)
    (car branch))

(define (branch-structure branch)
    (cadr branch))

(define (total-weight mobile)
    (+ (calculate-weight (left-branch mobile)) 
        (calculate-weight (right-branch mobile))))

(define (calculate-weight x)
    (if (number? (branch-structure x))
        (branch-structure x)
        (total-weight x)))

(define (calculate-torque branch) 
    (* (branch-length branch) ))

(define (balanced? mobile)
    )

;; incomplete