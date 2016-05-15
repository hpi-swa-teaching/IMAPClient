connection
connectTo: host on: port andLogin: username using: password

	^ self connectTo: (ICServerInfo for: host using: port) andLoginUsing: (ICAuthenticationInfo for: username using: password)