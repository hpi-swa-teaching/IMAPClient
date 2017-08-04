connection
createEmailsWith: maildir_directory andName: directory_name
  | server_directory filereader existing_emails email folder |
  server_directory := maildir_directory directoryNamed: directory_name.
  filereader := ICFileReadWriter new.
  (server_directory directoryNames) do:
    [ :foldername | 
      existing_emails := OrderedCollection new.
      folder := ((ICFolder new) name: foldername;
        emails: existing_emails;
        endpoint: self; yourself).
      self rootFolder addFolder: folder.
      (server_directory directoryNamed: foldername) fileNames do:
        [ :filename |
          email := (filereader get: filename in: (directory_name, FileDirectory slash, foldername)).
        email folder: folder.
         existing_emails add: email ]].
  
  ^ existing_emails.