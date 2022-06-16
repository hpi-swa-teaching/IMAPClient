mailHandling
deleteEmailsFromFolder: aFolder

	| accountName emailSet |
	accountName := aFolder accountName.
	emailSet := self movedMailsForAccount: accountName andFolder: aFolder.
	emailSet do: [:anEmail | aFolder endpoint deleteMailLocally: anEmail]