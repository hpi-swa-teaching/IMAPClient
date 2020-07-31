delete
deleteMailLocally: anEmail

	anEmail folder removeMail: anEmail.
	self readWriter delete: anEmail