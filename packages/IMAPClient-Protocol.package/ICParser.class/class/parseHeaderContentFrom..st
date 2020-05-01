parsing
parseHeaderContentFrom: aHeaderChunk

	^ ((aHeaderChunk joinSeparatedBy: ' ')
		copyReplaceFrom: 1 
		to: (aHeaderChunk first indexOf: $:) 
		with: String empty) withoutLeadingBlanks