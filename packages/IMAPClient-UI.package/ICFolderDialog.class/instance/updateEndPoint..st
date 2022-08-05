action - emails
updateEndPoint: anICEndPoint

	^ anICEndPoint rootFolder
		startUpdateWithLoadedEmails: anICEndPoint collectAllEmails
		showProgress: true
		with: [self progressCallback]
		except: anICEndPoint accountSettings notSyncedFolders