toolbuilder
emphasizeUnseenAccounts: aCollection

	aCollection do: [:anIndentingListItemMorph |
		| numOfUnseen |
		numOfUnseen := anIndentingListItemMorph complexContents item rootFolder numOfUnseenMails.
		numOfUnseen > 0
			ifTrue: [anIndentingListItemMorph emphasis: 9]
			ifFalse: [anIndentingListItemMorph emphasis: nil]]