
;; Wizards Adventure Game from Land of Lisp Book

;; Descriptions of locations

(defparameter *nodes* '((living-room (you are in the living-room.
					a wizard is snoring loudly on the couch.))
			  (garden (you are in a beautiful garden.
				   there is a well in front of you.))
			  (attic (you are in the attic.
				  there is a giant welding torch in the corner.))))

;; Describe location function

(defun describe-location (location nodes)
  (cadr (assoc location nodes)))

;; Describe the edges

(defparameter *edges* '((living-room (garden west door)
				      (attic upstairs ladder))
			 (garden (living-room east door))
			 (attic (living-room downstairs ladder))))

;; Describe path function

(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))

;; Describe multiple paths

(defun describe-paths (location edges)
  (apply #'append (mapcar #'describe-path (cdr (assoc location edges)))))

;; Defining Objects

(defparameter *objects* '(whiskey bucket frog chain))
  
  (defparameter *object-locations* '((whiskey living-room)
				    (bucket living-room)
				    (chain garden)
				     (frog garden)))


;; Object-at Function

(defun objects-at (loc objs obj-locs)
    (labels ((at-loc-p (obj)                             ;;defining the function
	       (eq (cadr (assoc obj obj-locs)) loc)))   ;;defining the function
      (remove-if-not #'at-loc-p objs)))                ;; call to the function


;; Describe visible Objects

(defun describe-objects (loc objs obj-loc)
    (labels ((describe-obj (obj)
	       `(you see a ,obj on the floor.)))
      (apply #'append (mapcar #'describe-obj (objects-at loc objs obj-loc)))))


;; Putting it all together

(defparameter *location* 'living-room)
  
  (defun look ()
    (append (describe-location *location* *nodes*)
	    (describe-paths *location* *edges*)
	    (describe-objects *location* *objects* *object-locations*)))


;; Walking around the world


(defun walk (direction)
    (let ((next (find direction
		      (cdr (assoc *location* *edges*))
		      :key #'cadr)))
      (if next
	  (progn (setf *location* (car next))
		 (look))
	  '(you cannot go that way.))))


;; Picking up objects

(defun pickup (object)
    (cond ((member object
		   (objects-at *location* *objects* *object-locations*))
	   (push (list object 'body) *object-locations*)
	    `(you are now carrying the ,object))
	  (t '(you cannot get that.))))


