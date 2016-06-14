login
login

	| endpoint |
	endpoint := ICEndpoint new.
	[ endpoint connectTo: self serverAddress asString on: self serverPort asNumber andLogin: self username using: self password ]
		on: Error
		do: [ :sig | self inform: sig asString ].
	(endpoint isLoggedIn)
		ifTrue: [ self inform: 'Successfully logged in!' ] 
		ifFalse: [ self inform: 'Login failed, please try again.' ].