as yet unclassified
addMail: anEmail forAccount: anAccount
	
	| accountDictionary |
	
	accountDictionary := self at: anAccount accountName ifAbsent: [self at: anAccount accountName put: Dictionary new].
	(accountDictionary at: anEmail folder ifAbsent: [ accountDictionary at: anEmail folder put: Set new.]) add: anEmail