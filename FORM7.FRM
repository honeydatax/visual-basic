Version 1.00
BEGIN Form Form7
	AutoRedraw   = 0
	BackColor    = QBColor(7)
	BorderStyle  = 2
	Caption      = "Form7"
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
	BEGIN TextBox Text1
		BackColor    = QBColor(7)
		BorderStyle  = 1
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(0)
		Height       = Char(3)
		Left         = Char(0)
		MousePointer = 0
		MultiLine    = 0
		ScrollBars   = 0
		TabIndex     = 0
		TabStop      = -1
		Tag          = ""
		Text         = "Text1"
		Top          = Char(0)
		Visible      = -1
		Width        = Char(42)
	END
	BEGIN TextBox Text2
		BackColor    = QBColor(7)
		BorderStyle  = 1
		DragMode     = 0
		Enabled      = -1
		ForeColor    = QBColor(0)
		Height       = Char(3)
		Left         = Char(0)
		MousePointer = 0
		MultiLine    = 0
		ScrollBars   = 0
		TabIndex     = 1
		TabStop      = -1
		Tag          = ""
		Text         = "Text2"
		Top          = Char(3)
		Visible      = -1
		Width        = Char(42)
	END
	BEGIN Timer Timer1
		Enabled      = -1
		Interval     = 0
		Left         = Char(0)
		Tag          = ""
		Top          = Char(6)
	END
END
OPTION EXPLICIT
DECLARE SUB Timer1_Timer ()

SUB Form_Load ()
    Timer1_Timer
    timer1.interval = 1000
END SUB

SUB Timer1_Timer ()
    text1.text = FORMAT$(NOW, "dd-mmm-yy")
    text2.text = FORMAT$(NOW, "hh:mm:ss AM/PM")
END SUB

