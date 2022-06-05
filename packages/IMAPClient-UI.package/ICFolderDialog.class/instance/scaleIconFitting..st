as yet unclassified
scaleIconFitting: anIcon

	| scaleFactor |
	
	scaleFactor := RealEstateAgent scaleFactor.
	
	^ (anIcon  scaledToSize: ((anIcon width)@(anIcon height) * scaleFactor * self iconScaleFactor))