constants
expectedStringRepresentation

	 ^ (self validAccountName , ' ' , self validHost, ' ', self validPort asString, ' ', self validUsername, ' ', self validPassword, ' ', 'true') asString