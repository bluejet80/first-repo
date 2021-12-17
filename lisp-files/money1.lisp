;; program for calculating monies

(defvar *money-list* nil)
(defvar *new-list* nil)
(defun make-money (ones twos fives tens twenties fifties hundreds)
  (setf *money-list*
	(list :1 ones
	      :2 twos
	      :3 fives
	      :4 tens
	      :5 twenties
	      :6 fifties
	      :7 hundreds)))

(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun get-money ()
  (make-money
   (or (parse-integer (prompt-read "Ones") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Twos") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Fives") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Tens") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Twenties") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Fifties") :junk-allowed t) 0)
   (or (parse-integer (prompt-read "Hundreds") :junk-allowed t) 0))

  (setq *new-list*
	(list (getf *money-list* :1)
	      (* (getf *money-list* :2) 2)
	      (* (getf *money-list* :3) 5)
	      (* (getf *money-list* :4) 10)
	      (* (getf *money-list* :5) 20)
	      (* (getf *money-list* :6) 50)
	      (* (getf *money-list* :7) 100)))


	      
  (format t "----------------~%")
  (format t "Ones:$ ~$~%" (getf *money-list* :1))
  (format t "Twos:$ ~$~%" (* (getf *money-list* :2) 2))
  (format t "Fives:$ ~$~%" (* (getf *money-list* :3) 5))
  
  (format t "Tens:$ ~$~%" (* (getf *money-list* :4) 10))
  (format t "Twenties:$ ~$~%" (* (getf *money-list* :5) 20))
  (format t "Fifties:$ ~$~%" (* (getf *money-list* :6) 50))
  (format t "Hundreds:$ ~$~%" (* (getf *money-list* :7) 100))
  (format t "----------------~%")
  (format t "Total:$ ~$~%" (apply '+ *new-list*)))     
  
	  
