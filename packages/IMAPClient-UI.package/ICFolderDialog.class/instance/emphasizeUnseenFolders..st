toolbuilder
emphasizeUnseenFolders: aCollection

	aCollection do: [:anIndentingListItemMorph |
		anIndentingListItemMorph complexContents item numOfUnseenMails > 0
			ifTrue: [self emphasize: anIndentingListItemMorph]
			ifFalse: [self unemphasize: anIndentingListItemMorph]]