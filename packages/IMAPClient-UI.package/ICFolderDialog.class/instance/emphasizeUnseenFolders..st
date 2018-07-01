toolbuilder
emphasizeUnseenFolders: aCollection

	aCollection do: [:anIndentingListItemMorph |
		| numOfUnseen |
		numOfUnseen := anIndentingListItemMorph complexContents item numOfUnseenMails.
		numOfUnseen > 0
			ifTrue: [anIndentingListItemMorph emphasis: 9]
			ifFalse: [anIndentingListItemMorph emphasis: nil]]