fetch
fetchFlagsForUIDs: anUID to: anotherUID

	self sendCommand: (ICCommand fetchFlagsForUIDsFrom: anUID to: anotherUID)