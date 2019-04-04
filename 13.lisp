(defun del-dup (lst &optional (r nil))
  (cond ((null lst) (reverse r))
        ((member (car lst) r) (del-dup (cdr lst) r))
        (t (del-dup (cdr lst) (cons (car lst) r))))) 
 
(print (del-dup '(1 2 3 1 2 2 a a 3))) ;(1 2 3 A)
