as yet unclassified
testSaveCredentialsIntoFile

	"this tests checks if a data dictionary can be saved correctly into a file"
	
	|directory result firstFileName secondFileName |
	
	self class configFiles do: [ :config | 	ICHelper saveCredentialsIntoFile: (config)].
	
	directory := self getConfigDirectory.
	
	firstFileName := (ICHelper getHashNameForAccount: (self class firstConfig at: 'address') 
		and: (self class firstConfig at: 'username')).
		
	secondFileName := (ICHelper getHashNameForAccount: (self class secondConfig at: 'address') 
		and: (self class secondConfig at: 'username')).
	
	"the method uses hashing for names"
	self 
		assert: (directory fileExists: (ICHelper getHashNameForAccount: (self class firstConfig at: 'address') 
		and: (self class firstConfig at: 'username'))).	
	
	self 
		assert: (directory fileExists: (ICHelper getHashNameForAccount: (self class secondConfig at: 'address') 
		and: (self class secondConfig at: 'username'))).	
			
	result := ICHelper loadCredentialsIntoDictionaries.
	
	self assert: ((result indexOf: (self class firstConfig)) ~= 0) equals: true. 
	self assert: ((result indexOf: (self class secondConfig)) ~= 0) equals: true.
	
	"delete the file, which was created for the test"
	self deleteConfigFiles: firstFileName and: secondFileName.