as yet unclassified
parseFetchHeaderContentType: aHeaderChunk for: anEmail

	| answer |
	
	"notice that joinSeperatedBy: ' ' and subStrings: ' '  are not inverse operation"
	answer := ((aHeaderChunk  joinSeparatedBy: ' ') subStrings: ' ') allButFirst joinSeparatedBy: ' '.
	anEmail contentType: answer