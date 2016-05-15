connection
connectTo: serverInfo andLoginUsing: autheticationInfo

	autheticationInfo isValid ifFalse: [ ^ Error signal: self class errorInvalidAuthenticationConfiguration ].
	
	self autheticationInfo: autheticationInfo.
	
	^ self connectTo: serverInfo.