accessing
movedMailsForAccount: anAccountName andFolder: aFolder
	
	 | accountDictionary |
	accountDictionary := self at: anAccountName ifAbsent: [self at: anAccountName put: Dictionary new].
	^(accountDictionary at:  aFolder ifAbsent: [ accountDictionary at: aFolder put: Set new.]) 