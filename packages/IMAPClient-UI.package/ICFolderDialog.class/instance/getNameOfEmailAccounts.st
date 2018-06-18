as yet unclassified
getNameOfEmailAccounts
	
	^ emailAccounts collect: [:mail | 
			Text fromString: (mail name)
	  ] 	