accessing - folder
hasMatchInAddressbook: aEmailSender with: aSearchString

	(ICAddressBook new do: [:contact |((contact includesSubString: aEmailSender) and:[contact includesSubString: aSearchString])ifTrue:[^true]]).
	^false
	