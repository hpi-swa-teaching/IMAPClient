as yet unclassified
loadCredentialsIntoDictionaries

	"this methods loads all credentials from within config folder, 
	and returns them in a collection of dictionaries, which contain the login information"
	
	| default_directory maildir_directory config_directory configs configCollection |

	configCollection := OrderedCollection new.
	default_directory := FileDirectory default.	
	
	(default_directory directoryExists: 'Maildir')
	ifTrue: [
		maildir_directory := default_directory directoryNamed: 'Maildir'.	
		(maildir_directory directoryExists: 'config')
		ifTrue: [
			config_directory := maildir_directory directoryNamed: 'config'.
			configs := config_directory fileNames.	
			configs do: [:config | 
				| loginData dataDictionary |
				loginData := OrderedCollection new.
				dataDictionary := Dictionary new.
				
				"parse config file"
				FileStream readOnlyFileNamed: (config_directory fullPathFor: config) do:
				[:stream | 
					[stream atEnd] 
					whileFalse: [
						| line |
						line := stream nextLine.
						loginData add: line]].	
				
				"create a dictionary for each config file"
				dataDictionary at: 'ssl' put: (self parseStringToBool: (loginData at: 5)).
				dataDictionary at: 'name' put: (loginData at: 1).
				dataDictionary at: 'address' put: (loginData at: 2) .
				dataDictionary at: 'port' put: ((loginData at: 3) asString).
				dataDictionary at: 'username' put: (loginData at: 4).
				
				configCollection add: dataDictionary]]].	
	
	^ configCollection			