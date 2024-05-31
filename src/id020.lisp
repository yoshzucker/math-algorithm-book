(let* ((n (read))
       (al (loop repeat n collect (read))))
  (loop for b below (expt 2 n)
        count (and (= (logcount b) 5)
                   (loop for i below n
                         when (logbitp i b)
                           sum (nth i al) into s
                         finally (return (= s 1000))))
          into c
        finally (print c)))
