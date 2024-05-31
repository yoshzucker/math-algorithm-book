(let* ((n (read))
       (al (loop repeat n collect (read))))
  (loop for a in al
        count (= a 100) into y1
        count (= a 200) into y2
        count (= a 300) into y3
        count (= a 400) into y4
        finally (print (+ (* y1 y4) (* y2 y3)))))
