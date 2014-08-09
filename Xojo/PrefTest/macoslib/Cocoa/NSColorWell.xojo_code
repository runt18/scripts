#tag Class
Class NSColorWell
Inherits NSControl
	#tag Event
		Sub Action()
		  // unused event
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function NSClassName() As String
		  return "NSColorWell"
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  self.Bordered = self.initialbordered
		  
		  raiseEvent Open
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Activate(exclusive as boolean = false)
		  //# Activates the NSColorWell, displays the color panel, and makes the current color the same as its own.
		  
		  #if targetCocoa
		    declare sub activate lib CocoaLib selector "activate:" (id as Ptr, exclusive as Boolean)
		    
		    activate(self.id, exclusive)
		  #else
		    #pragma unused exclusive
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Deactivate()
		  //# Deactivates the NSColorWell and redraws it.
		  
		  #if targetCocoa
		    declare sub deactivate lib CocoaLib selector "deactivate" (id as Ptr)
		    
		    deactivate(self.id)
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawWellInside(insideRect as Cocoa.NSRect)
		  //# Draws the colored area inside the NSColorWell at the specified location without drawing borders.
		  
		  #if targetCocoa
		    declare sub drawWellInside lib CocoaLib selector "drawWellInside:" (id as Ptr, insideRect as Cocoa.NSRect)
		    
		    drawWellInside(self.id, insideRect)
		  #else
		    #pragma unused insideRect
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsActive() As Boolean
		  //# Returns a Boolean value indicating whether the NSColorWell is active.
		  
		  #if targetCocoa
		    declare function isActive lib CocoaLib selector "isActive" (id as Ptr) as Boolean
		    
		    return isActive(self.id)
		  #endif
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  //# Returns a Boolean value indicating whether the NSColorWell has a border.
			  
			  #if targetCocoa
			    if self.id <> nil then
			      declare function isBordered lib CocoaLib selector "isBordered" (id as Ptr) as Boolean
			      
			      return isBordered(self.id)
			      
			    else
			      return self.initialbordered
			    end if
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  //# Places or removes a border on the NSColorWell and redraws the NSColorWell.
			  
			  #if targetCocoa
			    if self.id <> nil then
			      declare sub setBordered lib CocoaLib selector "setBordered:"  (id as Ptr, bordered as Boolean)
			      
			      setBordered self.id, value
			    else
			      self.initialbordered = value
			    end if
			    
			  #else
			    #pragma unused value
			  #endif
			End Set
		#tag EndSetter
		Bordered As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  //# Returns the color of the NSColorWell.
			  
			  #if targetCocoa
			    if self.id <> nil then
			      declare function colour lib CocoaLib selector "color" (id as Ptr) as Ptr
			      
			      return new NSColor(colour(self.id))
			    else
			      return &cFFFFFF
			    end if
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  //# Sets the color of the NSColorWell and redraws the NSColorWell.
			  
			  #if targetCocoa
			    if self.id <> nil then
			      declare sub setColour lib CocoaLib selector "setColor:"  (id as Ptr, colour as Ptr)
			      
			      setColour self.id, new NSColor(value)
			    end if
			    
			  #else
			    #pragma unused value
			  #endif
			End Set
		#tag EndSetter
		Colour As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private initialbordered As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Bordered"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Colour"
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
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
