toolbuilder
emphasizeUnseenFolders: aCollection

	aCollection do: [:anIndentingListItemMorph |
		(self getItemFrom: anIndentingListItemMorph) numberOfUnseenMails > 0
			ifTrue: [self emphasize: anIndentingListItemMorph]
			ifFalse: [self unemphasize: anIndentingListItemMorph]]