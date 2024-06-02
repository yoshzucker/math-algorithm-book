(defparameter *n* (read))
(defparameter *a* (make-array (1+ *n*) :fill-pointer 1))
(defparameter *c* (make-array (1+ *n*) :initial-element 0))
(loop repeat *n* do (vector-push (read) *a*))

(defun my-merge-sort (l r)
  (if (= (- r l) 1) nil
      (let ((m (floor (+ l r) 2)))
        (my-merge-sort l m)
        (my-merge-sort m r)
        
        (let ((c1 l)
              (c2 m)
              (cnt 0))
          (loop while (or (/= c1 m) (/= c2 r))
                do (cond ((= c1 m)
                          (setf (elt *c* cnt) (elt *a* c2))
                          (incf c2))
                         ((= c2 r)
                          (setf (elt *c* cnt) (elt *a* c1))
                          (incf c1))
                         (t
                          (cond ((< (elt *a* c2) (elt *a* c1))
                                 (setf (elt *c* cnt) (elt *a* c2))
                                 (incf c2))
                                (t
                                 (setf (elt *c* cnt) (elt *a* c1))
                                 (incf c1)))))
                   (incf cnt))
          (loop for i below cnt
                do (setf (elt *a* (+ l i)) (elt *c* i)))))))

(my-merge-sort 1 (1+ *n*))
(loop for i from 1 to *n* do (format t "~a " (elt *a* i)))
