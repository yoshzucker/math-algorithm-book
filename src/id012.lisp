;; p71 ch3.1.2
(let ((n (read)))
  (loop for i from 2 while (<= (* i i) n)
        when (zerop (mod n i)) return (format t "No")
          finally (format t "Yes")))
