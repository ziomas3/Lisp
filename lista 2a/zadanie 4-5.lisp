
(defvar *spis* '(
(:imie "Jan" :nazwisko "Kowalski" :kierunek "Fizyka" :rok 1)
(:imie "Ewa" :nazwisko "Nowak" :kierunek "Prawo" :rok 2)
(:imie "Marek" :nazwisko "Markowski" :kierunek "Fizyka" :rok 2)
(:imie "Adam" :nazwisko "Pietrzak" :kierunek "Fizyka" :rok 1)
(:imie "Zofia" :nazwisko "Sienkiewicz" :kierunek "Chemia" :rok 1)
(:imie "Jozef" :nazwisko "Koper" :kierunek "Fizyka" :rok 1)
))

(defmacro where (&rest fields)
  `#'(lambda (*spis*) 
		(and ,@	 
					(lambda (fields *spis*) 
						(loop while fields
							collecting `(equal (getf *spis* ,(pop fields)) ,(pop fields)
									) 
						) (fields *spis*)
					)
		) 
	) 
) 

(macroexpand-1 `(where :kierunek "Fizyka" :rok 1))


(incf z)
(zad z) ; zad 6
(format t "Podaj liczbe~%")
(setq n1 (read))
(setq k1 2)
(format t "dzielniki liczby ~A to:" n1)
(loop do
	(loop do 
		(format t "~A " k1)
		(setq n1 (/ n1 k1))
	while (eq (mod n1 k1) 0))
(incf k1)
while (> n1 1))
