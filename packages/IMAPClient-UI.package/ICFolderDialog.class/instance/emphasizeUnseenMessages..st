toolbuilder
emphasizeUnseenMessages: aCollection

	aCollection do: [:anIndentingListItemMorph |
		anIndentingListItemMorph complexContents item seen
			ifTrue: [anIndentingListItemMorph emphasis: 0]
			ifFalse: [anIndentingListItemMorph emphasis: 9]]