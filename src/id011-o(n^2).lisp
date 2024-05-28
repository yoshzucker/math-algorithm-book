(let ((n (read)))
  (loop for i from 2 to n
        when (loop for j from 2 below i
                   when (zerop (mod i j)) return nil
                   finally (return t))
          collect i into lst
        finally (format t "~{~a ~}~%" lst)))
