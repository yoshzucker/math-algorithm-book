(let ((n (read)))
  (loop for i from 1 to n with r = 1
        do (setf r (* r i))
        finally (print r)))

