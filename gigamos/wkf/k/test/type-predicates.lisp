(defun test-type-predicates ()
  (and
    (test-symbolp)
    (test-listp)
    ))

(defun test-symbolp ()
  (and
    (symbolp nil)
    (symbolp 'foo)
    (not (or (nsymbolp nil)
             (nsymbolp 'bar)))
    ))

(defun test-listp ()
  (let ((a (cons 1 (cons 2 (ncons 3))))
        (b (cons 'a 'b))
        (c (ncons 'foo)))
    (and
      (zl:listp a)
      (zl:listp b)
      (zl:listp c)
      (not (or (zl:listp nil)
               (zl:listp 3)
               (zl:listp 'a)))
      (listp a)
      (listp b)
      (listp c)
      (listp nil)
      (not (or (listp 3)
               (listp 'a)))
      (zl:nlistp nil)
      (zl:nlistp 3)
      (zl:nlistp 'a)
      (not (or (nlistp a)
               (nlistp b)
               (nlistp c)))
      (atom nil)
      (atom 3)
      (atom 'a)
      (not (or (atom a)
               (atom b)
               (atom c)))
      (consp a)
      (consp b)
      (consp c))))

(defun test-numbers ()
  (let ((a (cons 1 2))
        (i 23)
        (r (// 2 3))
        (b 123456789012345678901234567890)
        )))
