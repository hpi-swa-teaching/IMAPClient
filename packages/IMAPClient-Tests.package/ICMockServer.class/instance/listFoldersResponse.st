folder
listFoldersResponse 

	^ OrderedCollection newFrom: {
		'* LIST (\Unmarked \HasChildren) "." "INBOX"'.
		'* LIST (\HasNoChildren) "." "INBOX.Drafts"'.
		'* LIST (\HasNoChildren) "." "INBOX.Spam.Testordner"'.
		'* LIST (\HasNoChildren) "." "INBOX.Sent"'.
		'* LIST (\HasChildren) "." "INBOX.Spam"'.
		'* LIST (\HasNoChildren) "." "INBOX.Trash"'.
		'. OK LIST completed'}