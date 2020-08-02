toolbuilder
emphasizeUnseenFolders: aCollection

	aCollection do: [:anIndentingListItemMorph |
		anIndentingListItemMorph complexContents item numberOfUnseenMails > 0
			ifTrue: [self emphasize: anIndentingListItemMorph]
			ifFalse: [self unemphasize: anIndentingListItemMorph]]