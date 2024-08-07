(defun binary-search (sequence target fn)
  (loop with l = 0 and r = (1- (length sequence))
        for m = (floor (+ l r) 2)
        always (<= l r)
        do (let ((mvalue (funcall fn m)))
             (cond ((< target mvalue)
                    (setf r (1- m)))
                   ((< mvalue target)
                    (setf l (1+ m)))
                   (t
                    (return t))))))

(let* ((n (read))
       (x (read))
       (an (sort (loop repeat n collect (read)) #'<)))
  (format t "~:[No~;Yes~]"
          (binary-search an x #'(lambda (x) (elt an x)))))
