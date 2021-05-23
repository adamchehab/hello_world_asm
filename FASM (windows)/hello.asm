format PE console
entry Start
include 'C:\fasmw17327\INCLUDE\win32a.inc'

section '.data' data readable writable
	strHello db 'Hello, world!', 0

section '.code' code readable executable

    Start:
    ;  PRINT HELLO
        push strHello
        call [printf]

	; LEAVE PROGRAMM
        ; prevent console from closing
        call [getch]                

        ; leave programm
        push 0
        call [ExitProcess]

section '.idata' import data readable
	library kernel, 'kernel32.dll',\
			msvcrt, 'msvcrt.dll'
	
	import  kernel,\
			ExitProcess, 'ExitProcess'

	import  msvcrt,\
			printf, 'printf',\
			scanf, 'scanf',\
			getch, '_getch'