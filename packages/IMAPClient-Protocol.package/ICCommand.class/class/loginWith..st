commands
loginWith: anAccountInfo

	^ self join: {'LOGIN' . anAccountInfo usernameAsIMAPString . anAccountInfo passwordAsIMAPString}