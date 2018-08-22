updateEmails
retrieveFlagsFrom: anUID to: anotherUID

	"fetch mails from [anUid; anotherUID]"

	self endpoint 
		select: self path;
		retrieveFlagsFrom: anUID to: anotherUID in: self