(let ((as (list (read) (read) (read))))
  (print (reduce #'* as)))
