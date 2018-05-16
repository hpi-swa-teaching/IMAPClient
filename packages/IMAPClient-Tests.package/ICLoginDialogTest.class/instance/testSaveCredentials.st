test
testSaveCredentials
	"this tests insert data into the dialog checks whether its saved correctly.
	For doing so an ICMockLoginDialog Object is created, which overwrites the
	config file name (for not deleting existing configs by running the tests...)"
	
	|iclogin loginData |

	iclogin := ICMockLoginDialog new.
		
	iclogin username: self class testUsername.
	iclogin password: self class testPassword.
	iclogin serverAddress: self class testServerName.
	iclogin serverPort: self class testServerPort.
	iclogin ssl: self class testSSL.
	
	iclogin saveCredentialsIntoFile.
	
	loginData := iclogin loadCredentialsFromFile.
	self assert: (loginData at: 1) equals: self class testServerName.
	self assert: (loginData at: 2) equals: self class testServerPort.
	self assert: (loginData at: 3) equals: self class testUsername .
	self assert: (loginData at: 4) equals: self class testPassword.
	self assert: (loginData at: 5) equals: self class testSSLasString.
	
	"delete the file, which was created for the test"
	self deleteConfigFile.
	