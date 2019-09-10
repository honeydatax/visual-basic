Version 1.00
BEGIN Form Form1
	AutoRedraw   = 0
	BackColor    = QBColor(7)
	BorderStyle  = 2
	Caption      = "Form1"
	ControlBox   = -1
	Enabled      = -1
	ForeColor    = QBColor(0)
	Height       = Char(17)
	Left         = Char(15)
	MaxButton    = -1
	MinButton    = -1
	MousePointer = 0
	Tag          = ""
	Top          = Char(3)
	Visible      = -1
	Width        = Char(63)
	WindowState  = 0
	BEGIN ListBox List1
		BackColor    = QBColor(7)
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(0)
		Height       = Char(12)
		Left         = Char(0)
		MousePointer = 0
		Sorted       = 0
		TabIndex     = 0
		TabStop      = -1
		Tag          = ""
		Top          = Char(0)
		Visible      = -1
		Width        = Char(31)
	END
	BEGIN ListBox List2
		BackColor    = QBColor(7)
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(0)
		Height       = Char(12)
		Left         = Char(32)
		MousePointer = 0
		Sorted       = 0
		TabIndex     = 1
		TabStop      = -1
		Tag          = ""
		Top          = Char(0)
		Visible      = -1
		Width        = Char(29)
	END
	BEGIN CommandButton Command1
		BackColor    = QBColor(7)
		Cancel       = 0
		Caption      = "Command1"
		Default      = 0
		DragMode     = 0
		Enabled      = -1
		Height       = Char(3)
		Left         = Char(0)
		MousePointer = 0
		TabIndex     = 2
		TabStop      = -1
		Tag          = ""
		Top          = Char(12)
		Visible      = -1
		Width        = Char(17)
	END
END
DIM SHARED a(12) AS INTEGER
DIM SHARED c(12) AS INTEGER



SUB Command1_Click ()
    DIM b AS INTEGER
    DIM i AS INTEGER
    DIM f AS INTEGER
    DIM g AS INTEGER
    DIM h AS INTEGER
    c(0) = a(0)
    FOR b = 1 TO 9
        f = a(b)
        FOR i = 0 TO b - 1
            
            IF f < c(i) THEN
                g = c(i)
                c(i) = f
                f = g
            END IF


        NEXT
        c(i) = f
    NEXT
    FOR b = 0 TO 9
        list2.REMOVEITEM (0)
    NEXT b
    FOR b = 0 TO 9
        list2.ADDITEM (STR$(c(b)))
    NEXT b
END SUB

SUB Form_Load ()
    DIM b AS INTEGER
    RANDOMIZE (time)
    form1.caption = "order me"
    command1.caption = "order me"
    FOR b = 0 TO 9
    a(b) = INT(RND * 49) + 1
    list2.ADDITEM (" ")
    list1.ADDITEM (STR$(a(b)))
    NEXT
END SUB

