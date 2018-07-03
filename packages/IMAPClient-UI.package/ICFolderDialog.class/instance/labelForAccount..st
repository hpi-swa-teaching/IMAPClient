email selection
labelForAccount: anICEndpoint

	^ (Text fromString: (anICEndpoint name)) asString , Character tab , anICEndpoint rootFolder countOfUnseenMails asString