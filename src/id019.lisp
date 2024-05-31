(let* ((n (read))
       (al (loop repeat n collect (read))))
  (loop for a in al
        count (= a 1) into red
        count (= a 2) into yellow
        count (= a 3) into blue
        finally (print (+  (/ (* red (1- red)) 2)
                           (/ (* yellow (1- yellow)) 2)
                           (/ (* blue (1- blue)) 2)))))
