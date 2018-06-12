toolbuilder
emphasizeUnseenMessages: aCollection

	aCollection do: [:anIndentingListItemMorph |
		((anIndentingListItemMorph contents findString: '[UNSEEN]') ~= 0)
			ifTrue: [anIndentingListItemMorph emphasis: 9]
			ifFalse: [anIndentingListItemMorph emphasis: nil]]