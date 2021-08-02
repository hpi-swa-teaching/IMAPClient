accessing
fetchSelectResponse

	^ self acceptedFolders collect: [:aFolder|
			(ICCommand select: aFolder) -> (self selectResponse)] as: Dictionary