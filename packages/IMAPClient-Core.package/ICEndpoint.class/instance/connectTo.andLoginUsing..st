connection
connectTo: serverInfo andLoginUsing: autheticationInfo

	autheticationInfo isValid ifFalse: [ ^ Error signal: self class errorInvalidAuthenticationConfiguration ].
	
	self authenticationInfo: autheticationInfo.
	
	^ self connectTo: serverInfo.