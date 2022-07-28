folder
fetchMoveResponse: aMessageID

	^ self acceptedFolders
		collect: [:aFolder | (ICCommand moveEmail:  aMessageID to: aFolder) -> self selectResponse]
		as: Dictionary