Version 1.00
BEGIN Form Form5
	AutoRedraw   = 0
	BackColor    = QBColor(7)
	BorderStyle  = 2
	Caption      = "Form5"
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
		Height       = Char(15)
		Left         = Char(0)
		MousePointer = 0
		Sorted       = 0
		TabIndex     = 0
		TabStop      = -1
		Tag          = ""
		Top          = Char(0)
		Visible      = -1
		Width        = Char(61)
	END
END
DECLARE FUNCTION add! (number1 AS INTEGER, number2 AS INTEGER)
OPTION EXPLICIT

FUNCTION add (number1 AS INTEGER, number2 AS INTEGER)
    add = number1 + number2
END FUNCTION

SUB Form_Load ()
    DIM i AS INTEGER
    DIM n AS INTEGER
    n = 1
    FOR i = 0 TO 13
        list1.ADDITEM (STR$(n))
        n = add(n, n)
    NEXT

END SUB

