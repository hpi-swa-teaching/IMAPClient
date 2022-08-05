action - emails
updateEndPoint: anICEndpoint

	^ anICEndpoint rootFolder
		startUpdateWithLoadedEmails: anICEndpoint collectAllEmails
		showProgress: true
		with: [self progressCallback]
		except: anICEndpoint accountSettings notSyncedFolders