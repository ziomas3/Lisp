(defmacro plus (&rest args)
	`(+ ,@args)
)
(print (macroexpand '(plus 2 3 4)))
(print (plus 2 3 4))

