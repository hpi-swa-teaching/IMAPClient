login
login

	| endpoint|
	
	self credentials 
	ifTrue: [
		self saveCredentialsIntoFile.
	].	
	
	endpoint := ICEndPoint new.
	
	[ endpoint 
		ssl: self ssl;
		connectTo: self serverAddress asString on: self serverPort asNumber;
		login: self username using: self password ]
		on: Error
		do: [ :sig | self inform: sig asString ].
	(endpoint isLoggedIn)
		ifTrue: [
			ICFolderDialog openWith: endpoint. 
			Transcript show: (self class successLoginMessage); cr ] 
		ifFalse: [ self inform: self class failureLoginMessage ].