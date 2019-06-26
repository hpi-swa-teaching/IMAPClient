fetching
fetchUIDsFor: aFolderPath startingAt: aStartUID count: aCount

	| start end possibleUID numberToFetch |
	
	"aBeginUID is the last known UID of the folder. numberOfMessages is the number
	 of messages which should be fetched starting at this UID"
	
	numberToFetch := aCount.
	
	self select: aFolderPath.
	self currentUIDs.
	possibleUID := self uids select: [:uid | uid asNumber < aStartUID].
	possibleUID size < numberToFetch
		ifTrue: [numberToFetch := possibleUID size].
		
	numberToFetch = 0 ifTrue: [^ OrderedCollection new].	
		
	possibleUID := possibleUID copyFrom: (possibleUID size - numberToFetch + 1) to: possibleUID size. 
		
	start := possibleUID first.
	end := possibleUID last.
			
	^ self maildirDiffFetchHeadersFrom: start asString to: end asString