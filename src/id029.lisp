(let ((n (read)))
  (loop repeat n
        for i = 1 then j
        and j = 1 then (+ i j)
        finally (print j)))
