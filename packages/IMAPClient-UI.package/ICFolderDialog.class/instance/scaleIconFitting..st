as yet unclassified
scaleIconFitting: anIcon

	| scaleFactor referenceExtent |
	
	scaleFactor := RealEstateAgent scaleFactor.
	referenceExtent := RealEstateAgent defaultIconExtent.
	
	
	^ (anIcon  scaledToSize: (referenceExtent * scaleFactor * self iconScaleFactor))