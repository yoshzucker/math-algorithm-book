(defun factorial (n)
  (loop for i from 1 to n with r = 1
        do (setf r (* r i))
        finally (return r)))

(let ((n (read))
      (r (read)))
  (print (/ (factorial n) (factorial r) (factorial (- n r)))))
