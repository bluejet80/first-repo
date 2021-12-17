;; program for calculating monies

(defvar *money-list* nil)


(defun go-go ()
  (prompt-for-money)
  (make-new-list)
  (get-total)
  (print-list))


(defun make-money (ones twos fives tens twenties fifties hundreds)
  (setq *money-list*
   (list :ones ones
	:twos twos
	:fives fives
	:tens tens
	:twenties twenties
	:fifties fifties
	:hundreds hundreds)))


(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-money ()
  (make-money
   (or (parse-integer (prompt-read "Ones") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Twos") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Fives") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Tens") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Twenties") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Fifties") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Hundreds") :junk-allowed t) 0)))

;; now write the code to calculate and print


(defun make-new-list ()

(setq new-list
      (list :ones (getf money-list :ones)
	    :twos (* (getf money-list :twos) 2)
	    :fives (* (getf money-list :fives) 5)
	    :tens (* (getf money-list :tens) 10)
	    :twenties (* (getf money-list :twenties) 20)
	    :fifties (* (getf money-list :fifties) 50)
	    :hundreds (* (getf money-list :hundreds) 100))))
      
(defun get-total ()
(setq total (+
	     (getf new-list :ones)
	     (getf new-list :twos)
	     (getf new-list :fives)
	     (getf new-list :tens)
	     (getf new-list :twenties)
	     (getf new-list :fifties)
	     (getf new-list :hundreds))))

(defun print-list()
  (format t "~{a:~10t~a~%~}~%" new-list)
  (format t "Total: ~a" total))


