as yet unclassified
testLoadCredentialsIntoDictionaries
	"this tests checks if the config files can be parsed correctly into dictionaries"
	
	|configDir loadedDataCollection|

	configDir := self createConfigFiles.
	loadedDataCollection := ICHelper loadCredentialsIntoDictionaries.
	
	self assert: ((loadedDataCollection indexOf: (self class firstConfig)) ~= 0) equals: true. 
	self assert: ((loadedDataCollection indexOf: (self class secondConfig)) ~= 0) equals: true.
	"delete the file, which was created for the test"
	self deleteConfigFiles.
	
	