accessing
settingsList

	self selectedEndPoint ifNil: [^ OrderedCollection new].
	
	^ ICAccountSettings settingNames