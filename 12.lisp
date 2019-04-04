(defun repl (arr res)
    (cond
        ( (null (cdr arr)) (cons (car arr) res))
        ((= (car arr) (cadr arr)) (cons (car arr) (repl (cddr arr) res) ))
        (t (cons (car arr) (repl (cdr arr) res)))
    )
)

(print (repl '(1 2 3 4 4 500 6 7 8 9) NIL)) ;(1 2 3 4 500 6 7 8 9)
(print (repl '(1 2 6 7 8 9) NIL)) ;(1 2 3 4 500 6 7 8 9)
(print (repl '(1 2 3 4 4 500 500 6 7 7 8 9) NIL)) ;(1 2 3 4 500 6 7 8 9)
