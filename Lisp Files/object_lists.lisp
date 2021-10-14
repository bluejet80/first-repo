;;file of lists

(defparameter *fruit* (list
		       'apple
		       'pear
		       'peach
		       'orange
		       'kiwi
		       'banana
		       'tangerine
		       'guava
		       'pineapple
		       'tomato
		       'blueberry
		       'raspberry
		       'apricot))

(defparameter *body-parts* (list
			    'head
			    'heart
			    'arm
			    'leg
			    'foot
			    'hand
			    'eye
			    'forehead
			    'elbow
			    'face
			    'finger
			    'toe
			    'back
			    'knee))
			
(defparameter *action1* (list
			 'sitting
			 'standing
			 'sleeping
			 'walking
			 'stomping
			 'tip-toeing
			 'dancing
			 'jumping
			 'skipping
			 'riding
			 'running
			 'napping
			 'lounging))

(defparameter *predicate* (list
			   '(on my)
			   '(over my)
			   '(under my)
			   '(on her)
			   '(over her)
			   '(under his)
			   '(over his)
			   '(on your)
			   '(over your)
			   '(across your)
			   '(across his)
			   '(across her)
			   '(beside my)))


;; first attempts to print sentences
;; cant get rid of parenthesis

(defun print-fruit (fruit action pred body)
  (append (format t "There is a ~s ~s ~s ~s!~%" fruit action pred body)))



(defun print-out ()
  (mapcar #'print-fruit *fruit* *action1* *predicate* *body-parts*))

