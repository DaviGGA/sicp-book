(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

;; application

(gcd 204 60)

(define (gcd 204 60)
    (if (= 60 0)
        a
        (gcd 60 (remainder a b))))