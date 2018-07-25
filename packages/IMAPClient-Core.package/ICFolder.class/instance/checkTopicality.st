updateEmails
checkTopicality
	
	| relevantUIDs localMails min max |
	
	" we cant access first and last of the sortedCollection because its sorted by date, not by UID "
	min := self getLowestUID.
	max := self getHighestUID.
		
	self endpoint getCurrentUIDs.
	
	relevantUIDs := self endpoint uids select: [ :uid | (uid asNumber <= max) and: (uid asNumber >=min)].

	"search for uids, which are in storage, but not on the server --> they were moved"
	localMails := self emails copy.
	relevantUIDs do: [ :uid | localMails removeAllSuchThat: [ :mail | mail uid = uid]].
	
	"everything left in localMails has changed, and therefore can be removed"
	localMails do: [ :mail | mail deleteEmailFromDisk].
	