(let* ((n (read))
       (as (loop repeat n collect (read))))
  (print (mod (reduce #'+ as) 100)))
