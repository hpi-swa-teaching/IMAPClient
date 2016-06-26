initialization
selectInboxResponse

	^ OrderedCollection newFrom: {
		'* FLAGS (\Draft \Answered \Flagged \Deleted \Seen \Recent)'.
		'* OK [PERMANENTFLAGS (\* \Draft \Answered \Flagged \Deleted \Seen)] Limited'.
		'* 6 EXISTS'.
		'* 0 RECENT'.
		'* OK [UIDVALIDITY 464349142] Ok'.
		'* OK [MYRIGHTS "acdilrsw"] ACL'.
		'. OK [READ-WRITE] Ok"'}