toolbuilder
emphasizeLoadOlderEmailsButton: aCollection
	aCollection detect: [:item | item complexContents item class = ICLoadOlderMail]
						ifFound: [:item |
							item
								backgroundColor:
									(UserInterfaceTheme current properties
										at: PluggableListMorph->#filterColor);
								emphasis: 1]
						ifNone: []