addFolder
testUpdate
	
	self endpoint uids:{0} asOrderedCollection.
	self endpoint mailBody: 'body'.
	self root update.
	
	self deny: (self root emails includes: [:anEmail | anEmail body isNil or: [anEmail body isEmpty]])