connection
connectTo: host on: port

	[self connectTo: (ICServerInfo for: host using: port) with: SocketStream]
	valueWithin: 2 seconds onTimeout: [UserDialogBoxMorph inform: 'Connection could not be established' title: '']