toolbuilder
emphasizeUnseenMessages: aCollection

	aCollection do: [:anIndentingListItemMorph |
		anIndentingListItemMorph complexContents item seen
			ifTrue: [self unemphasize: anIndentingListItemMorph]
			ifFalse: [self emphasize: anIndentingListItemMorph]]