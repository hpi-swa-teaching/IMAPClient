instance creation
newWith: anAccountInfo

	| endPoint |
	endPoint := self new.
	endPoint connectionHandler accountInfo: anAccountInfo.
	endPoint accountSettings: (ICAccountSettings newFrom: endPoint readWriter readAccountSettings).
	
	^ endPoint