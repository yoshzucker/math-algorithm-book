(defun binary-search (l r test-fn)
  (loop for m = (floor (+ l r) 2)
        while (< l m r)
        do (if (funcall test-fn m)
               (setf l m)
               (setf r m))
        finally (return (if (funcall test-fn r) r m))))

(let* ((n (read))
       (x (read))
       (an (sort (loop repeat n collect (read)) #'<)))
  (format t "~:[No~;Yes~]"
          (= (elt an (binary-search 0 (1- n) #'(lambda (y) (<= (elt an y) x))))
             x)))
