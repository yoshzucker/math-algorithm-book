(let ((n (read)))
  (print (float (loop for i from 1 to n
        sum (/ n i)))))
