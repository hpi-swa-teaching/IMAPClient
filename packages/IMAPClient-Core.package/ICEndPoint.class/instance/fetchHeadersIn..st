fetching
fetchHeadersIn: aFolder

	self select: aFolder path.
	^ self fetchAllHeadersOfSelectedFolder collect: [ :email | email folder: aFolder ]