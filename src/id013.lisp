;; p72 ch3.1.5
(let ((n (read)))
  (loop for i from 1 while (<= (* i i) n)
        when (zerop (mod n i))
          do (if (= (* i i) n)
                 (format t "~a~%" i)
                 (format t "~a~%~a~%" i (/ n i)))))
