(let* ((n (read))
       (al (loop repeat n collect (read))))
  (loop for i below n with c = 0
        do (loop for j from (1+ i) below n
                 do (loop for k from (1+ j) below n
                          do (loop for l from (1+ k) below n
                                   do (loop for m from (1+ l) below n
                                            when (= 1000 (+ (nth i al)
                                                            (nth j al)
                                                            (nth k al)
                                                            (nth l al)
                                                            (nth m al)))
                                              do (incf c)))))
        finally (print c)))
