parsing
buildFlagsAssociationFor: aUidString from: aLineString

	^ Association
		key: aUidString first
		value: (self flags select: [:flag | aLineString includesSubstring: flag])