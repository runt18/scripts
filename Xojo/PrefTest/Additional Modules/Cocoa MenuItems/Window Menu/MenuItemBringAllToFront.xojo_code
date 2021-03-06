#tag Class
Protected Class MenuItemBringAllToFront
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "arrangeInFront:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Bring All To Front", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Bring All To Front"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Alle nach vorne bringen"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Tout ramener au premier plan"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Porta tutto in primo piano"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Alles op voorgrond"
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
