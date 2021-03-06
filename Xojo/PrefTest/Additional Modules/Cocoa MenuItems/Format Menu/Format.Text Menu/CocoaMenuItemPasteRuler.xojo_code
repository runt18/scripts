#tag Class
Protected Class CocoaMenuItemPasteRuler
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "pasteRuler:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Paste Ruler", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Paste Ruler"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Lineal einsetzen"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x83\xAB\xE3\x83\xBC\xE3\x83\xA9\xE3\x82\x92\xE3\x83\x9A\xE3\x83\xBC\xE3\x82\xB9\xE3\x83\x88"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Copier la r\xC3\xA8gle"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Incolla righello"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Plak liniaal"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
