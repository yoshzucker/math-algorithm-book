(let* ((n (read))
       (hi (loop repeat n collect (read))))
  (loop for i from 2 below n with dp = (make-array n :initial-element 0)
          initially (setf (aref dp 1) (abs (- (elt hi 1) (elt hi 0))))
        do (setf (aref dp i)
                 (min
                  (+ (aref dp (- i 1)) (abs (- (elt hi i) (elt hi (- i 1)))))
                  (+ (aref dp (- i 2)) (abs (- (elt hi i) (elt hi (- i 2)))))))
        finally (print (aref dp (1- n)))))
