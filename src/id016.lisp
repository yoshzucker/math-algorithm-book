(let* ((n (read))
       (al (loop repeat n collect (read))))
  (loop with a = (pop al) for b in al
        do (loop while (plusp (min a b))
                 do (if (< a b)
                        (setf b (mod b a))
                        (setf a (mod a b)))
                 finally (setf a (max a b)))
        finally (print a)))
