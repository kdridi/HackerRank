(defun read-integer ()
  (parse-integer (read-line)))

(defun solve (x y)
  (+ x y))

(defun main ()
  (let ((a (read-integer))
        (b (read-integer)))
    (write (solve a b))))

(main)
