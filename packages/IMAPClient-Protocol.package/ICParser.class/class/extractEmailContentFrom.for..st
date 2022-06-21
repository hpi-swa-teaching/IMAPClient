parsing
extractEmailContentFrom: aStream for: anEmailString

	| octetSize |
	octetSize := self readOctetSizeFrom: aStream for: anEmailString.
	self readEmailContentFrom: aStream for: anEmailString bySize: octetSize.
	self closeEmailContentFrom: aStream for: anEmailString