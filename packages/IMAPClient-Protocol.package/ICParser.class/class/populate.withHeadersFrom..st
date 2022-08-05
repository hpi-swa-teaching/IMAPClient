parsing
populate: anEmail withHeadersFrom: aHeaderChunk

	| headerField headerContent method |
	headerField := self parseHeaderFieldFrom: aHeaderChunk.
	headerContent := self parseHeaderContentFrom: aHeaderChunk.
	method := self parseMethods at: headerField ifAbsent: [
		self transcribeFailedHeaderParse: headerField.
		^ self].
	method value: headerContent value: anEmail