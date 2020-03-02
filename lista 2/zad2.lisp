(defun above (n) #'(lambda (x) (if (> x n) (print "Argument jest wiekszy") (print "Argument jest mniejszy"))))
    
(defun dzielnik (n) #'(lambda (x) (if (equal (mod x n) 0) (print "Argument jest dzielnikiem") (print "Argument nie jest dzielnikiem"))))
    
(format t "Podaj argument sprawdzania wielkosci")
(setq n (read))
(setq fabove (above n))
(format t "Podaj liczbe, ktora chcesz sprawdzic czy jest dzielnikiem")
(setq m (read))
(setq fdzielnik (dzielnik m))

(funcall fabove 4)
(funcall fabove 10)
(funcall fdzielnik 15)
(funcall fdzielnik 14)
(print (remove-if-not (above 7) '(0 1 2 3 4 5 6 7 8 9 10)))
(print (remove-if-not (dzielnik 6) '(0 1 2 3 4 5 6 7 8 9 10)))
