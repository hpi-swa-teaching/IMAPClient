as yet unclassified
testDeleteAccountFromEndpoint

	| endpoint serverInfo authenticationInfo directory configDirectory fileName |
	
	serverInfo := (ICServerInfo new) host: 'testHost'; port: 993.
	authenticationInfo := (ICAuthenticationInfo new) username: 'klaus'; password: 'test'.
	
	endpoint := ICEndPoint new.
	endpoint 
		serverInfo: serverInfo; 
		authenticationInfo: authenticationInfo.
	
	"file name calculated with hash of host + username"
	fileName := '1394373304'.
	
	"create dummy config file"
	directory := FileDirectory default.	
	
	(directory directoryExists: 'Maildir')
		ifFalse: [directory createDirectory: 'Maildir'].
  	
	directory := directory directoryNamed: 'Maildir'.
		
	"create maildir mail folder"
	(directory directoryExists: fileName)
		ifFalse: [directory createDirectory: fileName].
		
	"create config file"
	(directory directoryExists: 'config')
 		ifFalse: [directory createDirectory: 'config'].
		
 	configDirectory := directory directoryNamed: 'config'.	
	configDirectory forceNewFileNamed: fileName.
		
	self assert: ((directory directoryExists: fileName)) equals: true.
	self assert: ((configDirectory fileExists: fileName)) equals: true.
		
	ICHelper deleteAccountFromEndpoint: endpoint.
		
	self assert: ((directory directoryExists: fileName)) equals: false.
	self assert: ((configDirectory fileExists: fileName)) equals: false	