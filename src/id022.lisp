(let* ((n (read))
       (ai (make-array n :fill-pointer 0)))
  (loop repeat n do (vector-push (read) ai))
  (let ((cai (make-array (1+ 99999) :initial-element 0)))
    (loop for i below n do (incf (elt cai (elt ai i))))
    (loop for j from 1 to (floor 99999 2)
          sum (* (elt cai j) (elt cai (- (1+ 99999) j))) into c
          finally (incf c (/ (* (elt cai 50000) (1- (elt cai 50000))) 2))
                  (print c))))
