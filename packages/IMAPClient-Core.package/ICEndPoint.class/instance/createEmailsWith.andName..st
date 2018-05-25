connection
createEmailsWith: maildir_directory andName: directory_name
  | server_directory filereader email folder |
  server_directory := maildir_directory directoryNamed: directory_name.
  filereader := ICFileReadWriter new.
  (server_directory directoryNames) do:
    [ :foldername |
      folder := ((ICFolder new) name: foldername;
        endpoint: self; yourself).
      self rootFolder addFolder: folder.
      (server_directory directoryNamed: foldername) fileNames do:
        [ :filename |
	
	Transcript show: 'folderName:' , (directory_name, FileDirectory slash, foldername); cr.
          email := (filereader get: filename in: ('Maildir', FileDirectory slash, directory_name, FileDirectory slash, foldername)).
	(email seen isNil) ifTrue: [email seen: true].
	(email flagged isNil) ifTrue: [email flagged: false].
        email folder: folder.
         folder emails add: email ]]