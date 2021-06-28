as yet unclassified
deleteEmailsFromFolder: aFolder
	"comment stating purpose of message"

	| accountName emailSet  |
	
	accountName := aFolder accountName.
	emailSet := self getSetForAccount: accountName andFolder: aFolder.
	emailSet do: [:anEmail | aFolder endpoint deleteMailLocally: anEmail].
	