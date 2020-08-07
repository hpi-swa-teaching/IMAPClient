action - add emails
addMails: aMailCollection

	"Since Exchange uses other objects than emails we need to exclude them from the list"
	self emails addAll: (self sanitizeMailCollection: aMailCollection).