(de _missingPrograms (List)
	(filter '((X) (not (call 'which X))) List))

(de required List
	(when *Dbg
	  (if (_missingPrograms List)
		  (throw 'missingPrograms @)
		T)))
