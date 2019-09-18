Version 1.00
BEGIN Form Form4
	AutoRedraw   = 0
	BackColor    = QBColor(7)
	BorderStyle  = 2
	Caption      = "Form4"
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
DECLARE FUNCTION incint (number AS INTEGER, BYVAL plus AS INTEGER, BYVAL max AS INTEGER, min AS INTEGER) AS INTEGER
OPTION EXPLICIT

TYPE reti
over AS INTEGER
number AS INTEGER
END TYPE


SUB Form_Load ()
    DIM max AS INTEGER
    DIM min AS INTEGER
    DIM number AS INTEGER
    DIM plus AS INTEGER
    DIM i AS INTEGER
    DIM u AS INTEGER
    max = 64
    min = 0
    plus = 8
    number = 0
    FOR i = 0 TO 64
        u = incint(number, plus, max, min)
        IF u = -1 THEN plus = -plus
        list1.ADDITEM (STR$(number))
    NEXT
END SUB

FUNCTION incint (number AS INTEGER, BYVAL plus AS INTEGER, BYVAL max AS INTEGER, min AS INTEGER) AS INTEGER
    DIM n AS INTEGER
    DIM i AS INTEGER
    n = 0
    number = number + plus
    IF number > max THEN n = 1
    IF number < min THEN n = -1
    IF n = 1 THEN number = max
    IF n = -1 THEN number = min
    IF n = 1 THEN n = -1
    incint = n
END FUNCTION

