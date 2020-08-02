toolbuilder
emphasizeUnseenAccounts: aCollection

	aCollection do: [:anIndentingListItemMorph |
		anIndentingListItemMorph complexContents item rootFolder numOfUnseenMails > 0
			ifTrue: [self emphasize: anIndentingListItemMorph]
			ifFalse: [self unemphasize: anIndentingListItemMorph]]