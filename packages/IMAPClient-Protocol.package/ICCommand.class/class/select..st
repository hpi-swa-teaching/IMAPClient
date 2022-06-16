commands
select: aFolder

	^ self join: {'SELECT'. self putInQuotes: aFolder}