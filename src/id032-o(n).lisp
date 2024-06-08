(let* ((n (read))
       (x (read))
       (ai (make-array n :initial-contents (loop repeat n collect (read)))))
  (loop for i below n
        when (= (elt ai i) x)
          return (format t "Yes")
        finally (format t "No")))
