#tag Class
Protected Class CocoaMenuItemTextJustify
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "alignJustified:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Justify", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Justify"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Blocksatz"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE4\xB8\xA1\xE7\xAB\xAF\xE6\x8F\x83\xE3\x81\x88"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Justifier"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Giustifica"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vul uit"
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
