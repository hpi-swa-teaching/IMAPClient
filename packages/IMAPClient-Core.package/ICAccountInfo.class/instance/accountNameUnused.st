validating
accountNameUnused

	^ ICEndPoint connectionConfigurations noneSatisfy: [:each | self accountName = each accountName]