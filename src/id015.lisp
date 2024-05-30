;; ch3.2.2
(let ((a (read))
      (b (read)))
  (loop while (plusp (min a b))
        do (if (< a b)
               (setf b (mod b a))
               (setf a (mod a b)))
        finally (print (max a b))))
