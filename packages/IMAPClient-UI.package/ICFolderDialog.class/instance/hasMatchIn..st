accessing - folder
hasMatchIn: anICEmail

	^ (self hasMatchInLabel: anICEmail with: self filterString) or: [self hasSenderMatchInAddressbook: anICEmail sender with: self filterString]