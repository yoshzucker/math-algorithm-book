(defun gcm (a b)
  "greatest common multiple"
  (loop while (plusp (min a b))
        do (if (< a b)
               (setf b (mod b a))
               (setf a (mod a b)))
        finally (return (max a b))))

(defun my-lcm (a b)
  "least common multiple"
  (/ (* a b) (gcm a b)))

(let* ((n (read))
       (al (loop repeat n collect (read))))
  (print (reduce #'my-lcm al)))
