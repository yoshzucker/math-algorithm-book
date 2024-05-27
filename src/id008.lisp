(let ((n (read))
      (s (read)))
  (print (loop for i from 1 to n
               sum (loop for j from 1 to n
                         count (<= (+ i j) s)))))
