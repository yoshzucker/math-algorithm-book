(let ((n (read)))
  (loop with end = nil
        collect (loop for i from 2 while (<= (* i i) n)
                      when (zerop (mod n i))
                        do (setf n (/ n i))
                           (return i)
                      finally (setf end t)
                              (return n))
          into lst
        until end
        finally (format t "~{~a ~}" lst)))
