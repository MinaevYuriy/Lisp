(defun del (lt res i)
    (cond
        ((<= i 0) res)
        (t (cons (car lt) (del (cdr lt) res (- i 1))))
    )
)

(defun len (l n)
    (cond 
        ((null l) n)
        (t (len (cdr l) (+ n 1)))
    )
)

(print ((lambda (lt r) (del lt NIL (- (len lt 0) r))) '( -10 1 2 3 4 5 -2 -4) 3) ) ;(-10 1 2 3 4)
(print ((lambda (lt r) (del lt NIL (- (len lt 0) r))) '(1) 3) ) ; NIL
(print ((lambda (lt r) (del lt NIL (- (len lt 0) r))) '(1 2 3) 3) ) ; NIL
(print ((lambda (lt r) (del lt NIL (- (len lt 0) r))) '(1 2 3 4) 3) ) ; (1)
