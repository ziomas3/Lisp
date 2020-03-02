;(defun silnia (n)
;(if (= n 0) 1 (* n(silnia (- n 1))))
;(write (silnia 4))
(defun df (f) 
	(cond 
		((numberp f) 0)
		((atom f) (if  (eq f 'x) 1 0))
		(t 	
			(let ((op(car f)) (args(cdr f)))
				(case op
					('+ (cons op (mapcar #'df args)))
					('- (cons op (mapcar #'df args)))
					('* `(+  (* ,(first args) ,(df (second args)))(* ,(second args) ,(df (first args))))) 
					('/ `(/ (-  (* ,(first args) ,(df (second args)))(* ,(second args) ,(df (first args)))) (* ,(second args) ,(second args) ) ) )
					('sin (cons '*(cons (cons 'cos args) (mapcar #'df args))))
					('cos `(* (sin ,@args) ,(df (first args)) -1))
					('exp (cons `* (cons (cons `exp args) (mapcar #'df args)) ) )
					('x 1)
				)
			)
		
		)
	)
)
;(write (df '(/ (* 4 x) x)))
;(write (df '(sin (cos (* 2 x)))))
;(write (df '(+ 1x x1 )))
(write (df '(/ x (* 2 x))))
(write (df '(exp (* 2 x))))

;dodano dzielenie oraz exponente
