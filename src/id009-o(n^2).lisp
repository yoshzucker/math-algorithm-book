(let* ((n (read)) (s (read))
       (as (loop repeat n collect (read))))
  (loop named outer for b below (expt 2 n)
        do (loop for i below n 
                 when (logbitp i b)
                   sum (nth i as) into sum
                 finally (when (= sum s) (format t "Yes") (return-from outer)))
        finally (format t "No")))
