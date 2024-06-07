(let* ((n (read))
       (ai (make-array n :initial-contents (loop repeat n collect (read)))))
  (loop for i from 1 below n
        for o = (elt ai 0) then c
        and c = (max (elt ai 0) (elt ai 1)) then (max (+ o (elt ai i)) c)
        finally (print c)))
