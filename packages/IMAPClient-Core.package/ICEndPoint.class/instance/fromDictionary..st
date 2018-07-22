accessing
fromDictionary: configData
	
	"initializes endpoint with a dictionary"
	
	| possiblyEmptyParameters errorMessage |

	possiblyEmptyParameters := self checkForEmptyParameter: configData.
	errorMessage := 'Please put in '.
	
	Transcript show: possiblyEmptyParameters; cr.
	Transcript show: possiblyEmptyParameters isEmpty; cr.
	
	(possiblyEmptyParameters isEmpty) 
		ifFalse: [
			(ICHelper makeParameterCollection: possiblyEmptyParameters) do: [:parameter |
				errorMessage := errorMessage, parameter asString.
				(parameter ~= (ICHelper makeParameterCollection: possiblyEmptyParameters) last)
					ifTrue: [errorMessage := errorMessage, ', ']].
		errorMessage := errorMessage, ' data'.
		UserDialogBoxMorph inform: errorMessage title: ''.
		self fatalErrorOccured: true.
		^ self].
	
	self halt.
	[self
		ssl: (configData at: 'ssl');
		name: (configData at: 'name');
		connectTo: (configData at: 'address') on: ((configData at: 'port') asNumber);
		login: (configData at: 'username') using: (configData at: 'password')]
			on: Error
			do: [
				self fatalErrorOccured: true.
				UserDialogBoxMorph inform: 'Connection could not be established' title: '']