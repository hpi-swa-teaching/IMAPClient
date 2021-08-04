folder
fetchMoveResponse

	^ self acceptedFolders collect: [:aFolder|
			(ICCommand moveEmail: 47 to: aFolder) -> (self selectResponse)] as: Dictionary