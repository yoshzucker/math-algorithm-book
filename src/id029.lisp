(let ((n (read)))
  (loop for i from 2 to n with dp = (make-array (1+ n) :initial-element 1)
        do (setf (elt dp i) (+ (elt dp (- i 1)) (elt dp (- i 2))))
        finally (print (elt dp n))))
