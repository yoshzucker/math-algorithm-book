(defun merge-sort (lst)
  (if (= (length lst) 1) lst
      (let ((lstl (merge-sort (subseq lst 0 (floor (length lst) 2))))
            (lstr (merge-sort (subseq lst (floor (length lst) 2)))))
        (loop with lstc while (or lstl lstr)
              do (cond ((null lstl)
                        (push (pop lstr) lstc))
                       ((null lstr)
                        (push (pop lstl) lstc))
                       ((< (first lstl) (first lstr))
                        (push (pop lstl) lstc))
                       (t
                        (push (pop lstr) lstc)))
              finally (return (nreverse lstc))))))

(let* ((n (read))
       (ai (loop repeat n collect (read))))
  (format t "~{~a ~}" (merge-sort ai)))
