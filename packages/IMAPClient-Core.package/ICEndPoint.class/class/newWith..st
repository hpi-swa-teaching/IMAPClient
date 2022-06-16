instance creation
newWith: anAccountInfo

	| endpoint |
	endpoint := self new.
	endpoint connectionHandler accountInfo: anAccountInfo.
	
	^ endpoint