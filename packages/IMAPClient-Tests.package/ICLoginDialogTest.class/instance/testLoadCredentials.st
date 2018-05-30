test
testLoadCredentials
	"this tests creates an config file, and checks whether its loaded correctly.
	For doing so an ICMockLoginDialog Object is created, which overwrites the
	config file name (for not deleting existing configs by running the tests...)"
	
	|iclogin maildir|

	maildir := self createConfigFile.
			
	iclogin := ICMockLoginDialog new.
	
	self assert: iclogin username equals: self class testUsername.
	self assert: iclogin password equals: self class testPassword.
	self assert: iclogin serverAddress equals: self class testServerName.
	self assert: iclogin serverPort equals: self class testServerPort.
	self assert: iclogin ssl asString equals: self class testSSLasString.
	
	"delete the file, which was created for the test"
	self deleteConfigFile.
	
	