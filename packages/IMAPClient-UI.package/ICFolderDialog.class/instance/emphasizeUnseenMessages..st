toolbuilder
emphasizeUnseenMessages: aCollection

	aCollection do: [:anIndentingListItemMorph |
		anIndentingListItemMorph complexContents item seen
			ifTrue: [anIndentingListItemMorph emphasis: nil]
			ifFalse: [anIndentingListItemMorph emphasis: 9]]