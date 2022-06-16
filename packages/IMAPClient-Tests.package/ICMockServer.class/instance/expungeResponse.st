body
expungeResponse

	^ Dictionary newFrom: {ICCommand expungeEmails -> (OrderedCollection newFrom: {'. OK EXPUNGE completed'})}