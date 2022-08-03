constant
getAccountInfoAsStringRepresentation

	^ (self class validAccountName, ' ', self class validHost, ' ', self class validPort asString, ' ', self class validUsername, ' ', self class validPassword, ' ', 'true') asString