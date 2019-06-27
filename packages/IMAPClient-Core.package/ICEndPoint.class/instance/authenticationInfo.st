accessing
authenticationInfo

	^ authenticationInfo ifNil: [authenticationInfo := ICAuthenticationInfo new]