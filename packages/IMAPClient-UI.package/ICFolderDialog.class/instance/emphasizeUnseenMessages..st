toolbuilder
emphasizeUnseenMessages: aCollection

	aCollection do: [:anIndentingListItemMorph |
		(anIndentingListItemMorph contents match: '[unseen]*')
			ifTrue: [anIndentingListItemMorph emphasis: 9]
			ifFalse: [anIndentingListItemMorph emphasis: nil]]