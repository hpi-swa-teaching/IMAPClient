navigating
existsMorphWithContent: aSubstring in: aSubject

	^ (self findBySubstringInContents: aSubstring in: aSubject) morphs size == 1