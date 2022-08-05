toolbuilder
emphasizeUnseenMessages: aCollection

	aCollection do: [:anIndentingListItemMorph |
		(self getItemFrom: anIndentingListItemMorph) seen
			ifTrue: [self unemphasize: anIndentingListItemMorph]
			ifFalse: [self emphasize: anIndentingListItemMorph]]