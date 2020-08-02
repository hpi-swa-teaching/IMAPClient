validating
checkAccountInfoValidity: anAccountInfo
 
	self displayEmptyFieldErrorMessageIfNecessary: anAccountInfo missingFields.
	^ ICEndPoint new testAccountWith: anAccountInfo