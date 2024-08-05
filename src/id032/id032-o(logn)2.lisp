(let* ((n (read))
       (x (read))
       (an (sort (loop repeat n collect (read)) #'<)))
  (loop while (<= left right)
        with left = 1 and right = n
        do (let ((mid (floor (+ left right) 2)))
             (cond ((= x (elt an mid))
                    (return (format t "Yes")))
                   ((< x (elt an mid))
                    (setf right (1- mid)))
                   (t
                    (setf left (1+ mid)))))
        finally (format t "No")))
