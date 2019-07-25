toasts
constructEmptyFieldsErrorMessage: aCollection
	
	aCollection sort: [:first :second | 
		(self class inputParameterOrder indexOf: first) < 
		(self class inputParameterOrder indexOf: second)].
	
	^ 'Please put in ', (aCollection fold: [:a :b | a, ', ', b]) , ' data'