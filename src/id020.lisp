(let* ((n (read))
       (aa (make-array n :fill-pointer 0)))
  (loop repeat n do (vector-push (read) aa))
  (loop for i below n with c = 0
        do (loop for j from (1+ i) below n
                 do (loop for k from (1+ j) below n
                          do (loop for l from (1+ k) below n
                                   do (loop for m from (1+ l) below n
                                            when (= 1000 (+ (elt aa i)
                                                            (elt aa j)
                                                            (elt aa k)
                                                            (elt aa l)
                                                            (elt aa m)))
                                              do (incf c)))))
        finally (print c)))
