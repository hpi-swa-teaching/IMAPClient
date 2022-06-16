parsing
populate: anEmail withHeaderChunks: aHeaderChunkCollection

	aHeaderChunkCollection do: [:chunk | self populate: anEmail withHeadersFrom: chunk]