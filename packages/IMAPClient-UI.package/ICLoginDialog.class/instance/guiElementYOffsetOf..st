user interface
guiElementYOffsetOf: aNumber

	^ (((aNumber / 2) floor + 1) * self guiElementYOffset) + (aNumber * self guiElementYSpacing)
