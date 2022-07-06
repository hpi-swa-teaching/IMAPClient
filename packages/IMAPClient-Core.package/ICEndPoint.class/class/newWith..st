instance creation
newWith: anAccountInfo

	| endpoint |
	endpoint := self new.
	endpoint connectionHandler accountInfo: anAccountInfo.
	self accountSettings: (ICAccountSettings newFrom: self readWriter readAccountSettings).
	
	^ endpoint