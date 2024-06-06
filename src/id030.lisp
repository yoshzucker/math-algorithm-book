(let* ((n (read))
       (w (read))
       (wv (loop repeat n collect (list (read) (read)))))
  (loop for i below n
        with dp = (make-array (list (1+ n) (1+ w)) :initial-element 0)
        and mv = 0
        do (loop for j to w
                 with wi = (first (elt wv i)) and vi = (second (elt wv i))
                 do (setf (aref dp (1+ i) j)
                          (if (< j wi)
                              (aref dp i j)
                              (max (aref dp i j) (+ (aref dp i (- j wi)) vi))))
                    (setf mv (max mv (aref dp (1+ i) j))))
        finally (print mv)))
