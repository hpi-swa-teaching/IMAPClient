email selection
openEmail: email
	| mailDialog |
	mailDialog := ICEmailDialog openWith: email.
	self changed: #emailsOfSelectedFolder.
	^ mailDialog