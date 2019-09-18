Version 1.00
BEGIN Form Form3
	AutoRedraw   = 0
	BackColor    = QBColor(7)
	BorderStyle  = 2
	Caption      = "Form3"
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
OPTION EXPLICIT
DECLARE FUNCTION scrollinteger (max AS INTEGER, number AS INTEGER, plus AS INTEGER) AS INTEGER

SUB Form_Click ()

END SUB

SUB Form_Load ()
    DIM i AS INTEGER
    DIM max AS INTEGER
    DIM plus AS INTEGER
    DIM n AS INTEGER
    max = 360
    plus = max \ 8 + 8
    n = 0
    

    FOR i = 0 TO 64
        n = scrollinteger(max, n, plus)
        list1.ADDITEM (STR$(n))
        
    NEXT
END SUB

FUNCTION scrollinteger (max AS INTEGER, number AS INTEGER, plus AS INTEGER) AS INTEGER

    DIM n AS INTEGER
    n = number + plus
    WHILE (n > max)
    IF n > max THEN n = n - max
    WEND
    scrollinteger = n
END FUNCTION

