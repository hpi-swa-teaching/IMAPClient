accessing
settingsList

	self selectedEndpoint ifNil: [^OrderedCollection new].
	
	^ ICAccountSettings settingNames