corner_r=15

function conky_draw_corners()
    if conky_window==nil then return end
    local w=conky_window.width
    local w=conky_window.height
	local cs=cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, w, h)
    cr=cairo_create(cs)

	cairo_move_to(cr,corner_r,0)
	cairo_line_to(cr,w-corner_r,0)
	cairo_curve_to(cr,w,0,w,0,w,corner_r)
	cairo_line_to(cr,w,h-corner_r)
	cairo_curve_to(cr,w,h,w,h,w-corner_r,h)
	cairo_line_to(cr,corner_r,h)
	cairo_curve_to(cr,0,h,0,h,0,h-corner_r)
	cairo_line_to(cr,0,corner_r)
	cairo_curve_to(cr,0,0,0,0,corner_r,0)
	cairo_close_path(cr)


