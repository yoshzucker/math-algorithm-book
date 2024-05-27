(let ((n (read))
      (x (read))
      (y (read)))
  (loop for i from 1 to n
        count (or (zerop (mod i x)) (zerop (mod i y))) into s
        finally (print s)))
