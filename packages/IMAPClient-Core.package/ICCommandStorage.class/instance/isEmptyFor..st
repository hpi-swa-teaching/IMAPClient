as yet unclassified
isEmptyFor: anAccount

	^ (self at: anAccount ifAbsent: [ self addAccount: anAccount ]) isEmpty