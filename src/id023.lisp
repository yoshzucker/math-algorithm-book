(let* ((n (read))
       (lst (loop repeat (* 2 n) collect (read))))
  (print (float (/ (reduce #'+ lst) n))))
