running
setUp

	self helper: ICSetUpTestHelper new.
	self helper endpoint readWriter: (ICFileReadWriter new endpoint:  self helper endpoint).
	self root: self helper endpoint rootFolder.
	
	"
	self uniqueIds do: [:aNumber |
		self root addMails: {
			ICEmail new
				uniqueID: aNumber;
				folder: self root;
				date: self class date;
				seen: false}]"