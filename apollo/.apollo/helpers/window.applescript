###
# Bounds Helpers
###

# Return Bounds {l, t, r, b}
on getBounds(pnt, vec)
	set l to item 1 of pnt
	set t to item 2 of pnt
	set w to item 1 of vec
	set h to item 2 of vec
	return {l, t, (l + w), (t + h)}
end getBounds

# Return Size {w, h}
on getBoundsSize(bnds)
	set l to item 1 of bnds
	set t to item 2 of bnds
	set r to item 3 of bnds
	set b to item 4 of bnds
	return {r - l, b - t}
end getBoundsSize

# Return Piont {x, y}
on getBoundsTopLeft(bnds)
	return {item 1 of bnds, item 2 of bnds}
end getBoundsTopLeft

# Return Piont {x, y}
on getBoundsTopRight(bnds)
	return {item 3 of bnds, item 2 of bnds}
end getBoundsTopRight

# Return Piont {x, y}
on getBoundsBottomLeft(bnds)
	return {item 1 of bnds, item 4 of bnds}
end getBoundsBottomLeft

# Return Piont {x, y}
on getBoundsBottomRight(bnds)
	return {item 3 of bnds, item 4 of bnds}
end getBoundsBottomRight

# Return Point {x, y}
on getBoundsCenter(bnds)
	set bndsSize to getBoundsSize(bnds)
	set l to item 1 of bnds
	set t to item 2 of bnds
	set w to item 1 of bndsSize
	set h to item 2 of bndsSize
	return {(w div 2) + l, (h div 2) + t}
end getBoundsCenter

# Return Bounds {l, t, r, b}
on getBoundsTranslation(bnds, vec)
	set l to item 1 of bnds
	set t to item 2 of bnds
	set r to item 3 of bnds
	set b to item 4 of bnds
	set x to item 1 of vec
	set y to item 2 of vec
	return {l + x, t + y, r + x, b + y}
end getBoundsTranslation

# Return Vector {x, y}
on getVector(pnt1, pnt2)
	set x1 to item 1 of pnt1
	set y1 to item 2 of pnt1
	set x2 to item 1 of pnt2
	set y2 to item 2 of pnt2
	return {x2 - x1, y2 - y1}
end getVector

# Return Vector {x, y}
on getVectorAdd(vec1, vec2)
	set x1 to item 1 of vec1
	set y1 to item 2 of vec1
	set x2 to item 1 of vec2
	set y2 to item 2 of vec2
	return {x1 + x2, y1 + y2}
end getVectorAdd

# Return Vector {x, y}
on getVectorSub(vec1, vec2)
	set x1 to item 1 of vec1
	set y1 to item 2 of vec1
	set x2 to item 1 of vec2
	set y2 to item 2 of vec2
	return {x1 - x2, y1 - y2}
end getVectorSub

# Return Vector {x, y}
on getVectorDotProduct(vec1, vec2)
	set x1 to item 1 of vec1
	set y1 to item 2 of vec1
	set x2 to item 1 of vec2
	set y2 to item 2 of vec2
	return {x1 * x2, y1 * y2}
end getVectorDotProduct

# Return Vector {x, y}
on getVectorAsInteger(vec)
	return {item 1 of vec as integer, item 2 of vec as integer}
end getVectorAsInteger

# Return Vector {x, y} that is inside bnds
on getPointBoundsConstraint(pnt, bnds)
	set x to item 1 of pnt
	set y to item 2 of pnt
	
	if x is less than item 1 of bnds then
		set x to item 1 of bnds
	end if
	if x is greater than item 3 of bnds then
		set x to item 3 of bnds
	end if
	if y is less than item 2 of bnds then
		set y to item 2 of bnds
	end if
	if y is greater than item 4 of bnds then
		set y to item 4 of bnds
	end if
	
	return {x, y}
end getPointBoundsConstraint

# Return Bounds {l, t, r, b} such that inBnds fits entirely inside outBnds
on getBoundsConstraint(inBnds, outBnds)
	set outSize to getBoundsSize(outBnds)
	set inSize to getBoundsSize(inBnds)
	if (item 1 of inSize) is greater than (item 1 of outSize) then
		set item 1 of inSize to item 1 of outSize
	end if
	if (item 2 of inSize) is greater than (item 2 of outSize) then
		set item 2 of inSize to item 2 of outSize
	end if
	
	set pntBnds to getBounds(outBnds, getVectorSub(outSize, inSize))
	set pnt to getPointBoundsConstraint(getBoundsTopLeft(inBnds), pntBnds)
	
	return getBounds(pnt, inSize)
end getBoundsConstraint



###
# Window helpers
###

on getActiveWindow()
	tell application "System Events"
		set activeApp to first application process whose frontmost is true
		return front window of activeApp
	end tell
end getActiveWindow

on getWindowBounds(wnd)
	tell application "System Events"
		set {w, h} to size of wnd
		set {l, t} to position of wnd
	end tell
	
	return {l, t, l + w, t + h}
end getWindowBounds

on setWindowBounds(wnd, bnds)
	set deskBnds to getDesktopBounds()
	set bnds to getBoundsConstraint(bnds, deskBnds)
	set wndPos to getBoundsTopLeft(bnds)
	set wndSize to getBoundsSize(bnds)
	
	tell application "System Events"
		set position of wnd to wndPos
		set size of wnd to wndSize
	end tell
end setWindowBounds



###
# Desktop helpers
###

on getDesktopWindow()
	tell application "Finder"
		return window of desktop
	end tell
end getDesktopWindow

on getDesktopBounds()
	set top to 23
	set bot to 4
	set win to getDesktopWindow()
	set bnds to bounds of win
	return {item 1 of bnds, (item 2 of bnds) + top, item 3 of bnds, (item 4 of bnds) - bot}
end getDesktopBounds
