toasts
constructEmptyFieldsErrorMessage: aCollection
	
	| parameters |
	parameters := ((ICHelper makeParameterCollection: aCollection) 
						collect: [:parameter | parameter asString])
							fold: [:a :b | a,', ',b].
	
	^ 'Please put in ', parameters, ' data'