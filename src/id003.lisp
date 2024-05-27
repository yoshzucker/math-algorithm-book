(let* ((n (read))
       (as (loop repeat n collect (read))))
  (print (reduce #'+ as)))
