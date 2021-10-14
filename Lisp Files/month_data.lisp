
;; Create the database and record

(defvar *data-store* nil) ;; create the database global variable 

(defun make-rec (date h1 h2 b1 b2 b3) ;;defines the attributes of the rec
  (list :date date :h1 h1 :h2 h2 :b1 b1 :b2 b2 :b3 b3))

;; Ability to Add data 

(defun add-rec (a b c d e f)  ;; create a rec on the database
  (push (make-rec a b c d e f) *db*))

;; ask the user for input
(defun promt-read (prompt)
  (format *query-io "~a: " prompt)
  (force-output *query-io*)
  (read-


;; format the output of the database


;; develop searches/ bring up only categories



;; save/load the database



;; output to file

