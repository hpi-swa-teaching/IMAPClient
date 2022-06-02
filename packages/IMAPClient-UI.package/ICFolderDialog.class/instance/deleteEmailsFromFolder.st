actions - folders
deleteEmailsFromFolder

	self selectedFolder emails do:[:email | self selectedEmail: email. self deleteEmail]
	