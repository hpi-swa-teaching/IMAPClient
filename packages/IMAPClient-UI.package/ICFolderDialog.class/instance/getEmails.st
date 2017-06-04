get emails
getEmails
	"Getting all emails"

	rootFolder do: [ :folder | self getEmailsIn: folder ]