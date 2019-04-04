(defun mkpair (lst)
  (cond ((null lst) nil)
        ((= (length lst) 1) (list lst))
        (t (cons (list (car lst) (cadr lst)) (mkpair (cddr lst)))))) 
 
(print (mkpair '(a b c d e))) ;((A B) (C D) (E))

