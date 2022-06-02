instance creation
getIconDictionary
	
	^ Dictionary newFrom: {
		#Inbox -> #inboxIcon.
		#Junk -> #junkIcon.
		#Drafts -> #draftIcon.
		#Trash -> #trashIcon.
		#Sent -> #sentIcon.
	}
	