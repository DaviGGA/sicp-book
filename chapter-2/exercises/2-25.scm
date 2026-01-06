; (1 3 (5 7) 9)
; ((7))
; (1 (2 (3 (4 (5 (6 7))))))

(define one (list 1 3 (list 5 7) 9))
(define two (list (list 7)))
(define three (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(display (car (cdr (car (cdr (cdr one))))))
(newline)
(display (car (car two)))
(newline)
(display (cadr (cadr (cadr (cadr (cadr (cadr three)))))))
(newline)