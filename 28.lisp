(defun atom-counter (lst)
  (length (remove-if-not #'atom lst)))
 
(print (atom-counter '(1 2 3 (1 2) (3 4) 5))) ;4
