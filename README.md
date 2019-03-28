# 10 12 13 26 28 29 37 43 46 47 

### |10| Определите функцию, осуществляющую удаление указанного количества по- следних элементов исходного списка.
```lisp
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
```
### |12| Определите функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним.
```lisp
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
```
### |13| Определите функцию, удаляющую в исходном списке все повторные вхожде-ния элементов
```lisp
(defun del-dup (lst &optional (r nil))
  (cond ((null lst) (reverse r))
        ((member (car lst) r) (del-dup (cdr lst) r))
        (t (del-dup (cdr lst) (cons (car lst) r))))) 
 
(print (del-dup '(1 2 3 1 2 2 a a 3)))
```
### |26| Определите функцию, разбивающую список(a b с d...)на пары((а b) (сd)...)
```lisp
(defun mkpair (lst)
  (cond ((null lst) nil)
        ((= (length lst) 1) (list lst))
        (t (cons (list (car lst) (cadr lst)) (mkpair (cddr lst)))))) 
 
(print (mkpair '(a b c d e)))

```
### |28| Определите функцию, вычисляющую, сколько всего атомов в списке (списоч-ной структуре)
```lisp
(defun atom-counter (lst)
  (length (remove-if-not #'atom lst)))
 
(print (atom-counter '(1 2 3 (1 2) (3 4) 5)))
```
