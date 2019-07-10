instance creation
from: data
	
	^ self newWithAccountName: (data at: 'name') host: (data at: 'address') port: ((data at: 'port') asNumber) username: (data at: 'username') password: (data at: 'password') ssl: (data at: 'ssl')