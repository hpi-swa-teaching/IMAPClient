mailHandling
isEmptyFor: anAccount

	^ (self at: anAccount ifAbsent: [ self addAccount: anAccount ]) isEmpty