read file
syncFromDisk

	self loadedEmails: self endpoint collectAllEmails.
	"self endpoint unlinkAllEmails."
	self readEmailsFromDisk.
"	self loadedEmails: OrderedCollection new."