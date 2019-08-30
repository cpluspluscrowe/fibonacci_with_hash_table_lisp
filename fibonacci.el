(setq ht (make-hash-table))

(defun fibonacci (n)
  (let ((from-ht (gethash n ht)))
    (cond
        (from-ht from-ht)
        ((eq n 0) 0)
        ((eq n 1) 0)
        ((eq n 2) 1)
        (t
         (let ((new-hash (+ (fibonacci (- n 1))
                            (fibonacci (- n 2)))
            ))
           (setf (gethash n ht) new-hash)
           new-hash
        )))))

(fibonacci 0)
(fibonacci 1)
(fibonacci 2)
(fibonacci 3)
(fibonacci 4)
(fibonacci 5)
(fibonacci 6)
(fibonacci 7)
(fibonacci 40)
(fibonacci 120); 1025370293190705585, works!

