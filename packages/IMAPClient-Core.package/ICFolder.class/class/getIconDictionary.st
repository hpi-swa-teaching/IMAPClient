instance creation
getIconDictionary
	
	^ Dictionary newFrom: {
		'INBOX' -> #inboxIcon.
		'Spam' -> #junkIcon.
		'Entwurf' -> #draftIcon.
		'Papierkorb' -> #trashIcon.
		'Gesendet' -> #sentIcon.
	}
	