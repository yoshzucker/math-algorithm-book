(let* ((n (read))
       (al (loop repeat n collect (read))))
  (let ((red (count 1 al))
        (yellow (count 2 al))
        (blue (count 3 al)))
    (print (+ (/ (* red (1- red)) 2)
              (/ (* yellow (1- yellow)) 2)
              (/ (* blue (1- blue)) 2)))))
