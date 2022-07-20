addFolder
testUpdate

	| iDsBeforeUpdate body |
	iDsBeforeUpdate := self root lowestUniqueID to: self root highestUniqueID.
	self endpoint uids: iDsBeforeUpdate.
	self endpoint mailBody: self class mailBody.
	self root startUpdateWithLoadedEmails:  self selectedFolder endpoint collectAllEmails showProgress: false with: [].
	
	self deny: (self root emails includes: [:anEmail |
		body := anEmail body.
		body isString not or: [body isEmpty]]).
	self assert: self root emails size equals: iDsBeforeUpdate size + self class numberOfFetchedMails