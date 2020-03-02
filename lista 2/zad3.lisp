 (defmacro iloczyn (&rest x) 
(let ((wynik 1)) 
(progn 
(loop for i in x do 
(if (not (equal i 0)) 
(setq wynik (* wynik i)) 
(progn (setq wynik 0) (return))
)
)
(print wynik)
)
)
)

(iloczyn 1 2 3 4 5 6 7 0)

(iloczyn 2 3 4 1 3 4)
