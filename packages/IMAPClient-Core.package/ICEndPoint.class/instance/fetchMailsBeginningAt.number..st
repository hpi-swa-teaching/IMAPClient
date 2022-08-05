protocol handling - fetch
fetchMailsBeginningAt: aBeginUID number: numberOfMessages
	"aBeginUID is the last known UID of the folder. numberOfMessages is the number
	 of messages which should be fetched starting at this UID"

	| possibleUID numberToFetch |
	numberToFetch := numberOfMessages.
	
	possibleUID := self currentUIDs select: [:uid | uid asNumber < aBeginUID].
	possibleUID size < numberToFetch ifTrue: [numberToFetch := possibleUID size].
	numberToFetch = 0 ifTrue: [^ OrderedCollection new].
	
	possibleUID := possibleUID
		copyFrom: possibleUID size - numberToFetch + 1
		to: possibleUID size.
	
	^ self maildirDiffFetchHeadersFrom: possibleUID first asString to: possibleUID last asString