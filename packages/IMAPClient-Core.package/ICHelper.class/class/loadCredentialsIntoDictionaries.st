as yet unclassified
loadCredentialsIntoDictionaries

	"this methods loads all credentials from within config folder, 
	and returns them in a collection of dictionaries, which contain the login information"
	
	| defaultDirectory maildirDirectory configDirectory configs configCollection |

	configCollection := OrderedCollection new.
	defaultDirectory := FileDirectory default.	
	
	(defaultDirectory directoryExists: 'Maildir')
	ifTrue: [
		maildirDirectory := defaultDirectory directoryNamed: 'Maildir'.	
		(maildirDirectory directoryExists: 'config')
		ifTrue: [
			configDirectory := maildirDirectory directoryNamed: 'config'.
			configs := configDirectory fileNames.	
			configs do: [ :config | 
				| loginData dataDictionary |
				loginData := OrderedCollection new.
				dataDictionary := Dictionary new.
				
				"parse config file"
				FileStream readOnlyFileNamed: (configDirectory fullPathFor: config) do:
				[:stream | 
					[stream atEnd] 
					whileFalse: [
						| line |
						line := stream nextLine.
						loginData add: line]].
			
				"create a dictionary for each config file"
				dataDictionary at: 'name' put: (loginData at: 1).
				dataDictionary at: 'ssl' put: (self parseStringToBool: (loginData at: 5)).
				dataDictionary at: 'address' put: (loginData at: 2) .
				dataDictionary at: 'port' put: ((loginData at: 3) asString).
				dataDictionary at: 'username' put: (loginData at: 4).
			
				configCollection add: dataDictionary]]].	
	
	^ configCollection		