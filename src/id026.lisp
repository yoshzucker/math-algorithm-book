(let ((n (read)))
  (format t "~f" (loop for i from 1 to n sum (/ n i 1.0d0))))
