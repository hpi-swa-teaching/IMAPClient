accessing - folder
hasSenderMatchInAddressbook: aEmailSender with: aSearchString

	^ ICAddressBook new contains: [:contact | (contact includesSubstring: aEmailSender) and: [contact includesSubstring: aSearchString]]