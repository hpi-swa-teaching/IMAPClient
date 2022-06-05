action - remove emails
moveEmailsToTrash

	self emails do: [:email | self endpoint deleteEmail: email.]
	