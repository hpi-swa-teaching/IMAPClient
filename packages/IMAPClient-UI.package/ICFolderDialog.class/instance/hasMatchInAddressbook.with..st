accessing - folder
hasMatchInAddressbook: aEmailSender with: aSearchString

	(ICAddressBook new do: [:contact |((contact includesSubstring: aEmailSender) and:[contact includesSubString: aSearchString])ifTrue:[^true]]).
	^false
	