as yet unclassified
newWith: anAccountInfo

	| endpoint |
	
	endpoint := self new.
	endpoint connectionHandler accountInfo: anAccountInfo.
	
	^ endpoint