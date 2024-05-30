(let ((n (read)))
  (loop for i from 2 while (<= (* i i) n)
        append (loop while (zerop (mod n i))
                     do (setf n (/ n i))
                     collect i)
          into lst
        finally (when (<= 2 n) (setf lst (append lst (list n))))
                (format t "~{~a ~}" lst)))
