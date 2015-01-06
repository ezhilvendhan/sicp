;;; Pascal's Triangle

(define (pt n)  
  (define (get-val x y)
      (cond ((= x 1) 1)
            ((= x y) 1)
            (else (+ (get-val (- x 1) (- y 1)) 
                      (get-val x (- y 1))
                  )
            ))
  )
  (define (sol x y)
    (cond ((> y n) (newline))
          ((> x y) (newline)
                   (sol 1 (+ y 1))
                   )
          (else (display #\space)(display (get-val x y))
                (sol (+ x 1) y)
                )
          )
    )
  (sol 1 1)
)
