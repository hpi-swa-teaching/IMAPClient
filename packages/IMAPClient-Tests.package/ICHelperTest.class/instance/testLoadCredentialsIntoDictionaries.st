as yet unclassified
testLoadCredentialsIntoDictionaries
	"this tests checks if the config files can be parsed correctly into dictionaries.
	 for default folders and config files are named by hash...here we use just the name"
	
	| loadedDataCollection |

	self createConfigFiles.
	loadedDataCollection := ICHelper loadCredentialsIntoDictionaries.
	
	self assert: ((loadedDataCollection indexOf: (self class firstConfig)) ~= 0) equals: true. 
	self assert: ((loadedDataCollection indexOf: (self class secondConfig)) ~= 0) equals: true.
	
	"delete the file, which was created for the test"
	self deleteConfigFiles: (self class firstConfig at: 'name') and: (self class secondConfig at: 'name').
	