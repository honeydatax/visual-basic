Version 1.00
BEGIN Form Form9
	AutoRedraw   = 0
	BackColor    = QBColor(7)
	BorderStyle  = 2
	Caption      = "Form9"
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
DECLARE FUNCTION intinc (max AS INTEGER, current AS INTEGER) AS INTEGER
DECLARE FUNCTION div (number1 AS INTEGER, number2 AS INTEGER) AS INTEGER
DECLARE FUNCTION generate (max AS INTEGER, steps AS INTEGER, current AS INTEGER) AS INTEGER
OPTION EXPLICIT

FUNCTION div (number1 AS INTEGER, number2 AS INTEGER) AS INTEGER
    div = number1 \ number2
END FUNCTION

SUB Form_Load ()
    DIM i AS INTEGER
    DIM n AS INTEGER
    DIM m AS INTEGER
    DIM max AS INTEGER
    max = 50
    n = 1
    m = 1
    FOR i = 0 TO 63
        IF n = -1 THEN m = intinc(max, m)
        IF m <> -1 THEN n = generate(max, m, n)
        IF m <> -1 AND n <> -1 THEN list1.ADDITEM (STR$(n))
    NEXT
END SUB

FUNCTION generate (max AS INTEGER, steps AS INTEGER, current AS INTEGER) AS INTEGER
    DIM i AS INTEGER
    DIM n AS INTEGER
    i = div(max, steps)
    n = current + i
    IF n > max THEN n = -1
    generate = n
END FUNCTION

FUNCTION intinc (max AS INTEGER, current AS INTEGER) AS INTEGER
    DIM i AS INTEGER
    i = current + 1
    IF i > max THEN i = -1
    intinc = i
END FUNCTION

