
;; prints 1 to 20 and then 20 to 1

(defun loop1 ()
       (loop for x from 1 to 20
	      do (print x))
       (loop for y from 20 downto 1
	     do (print y)))


;; separate the loops into different functions
  (defun list-up ()
    (loop for x from 1 to 20
	  do (print x)))
  (defun list-dn ()
    (loop for x from 20 to 1
	  do (print x)))


;; do the function twice
(dotimes ( x 2 ) (loop1))


;; prints a b c
(dolist (x '(a b c)) (print x))
