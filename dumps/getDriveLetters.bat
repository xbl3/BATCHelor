@echo off 
setlocal enabledelayedexpansion 

rem	simple outline for just echoing any drives that are present

for %%a in (A: B: C: D: E: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T: U: V: W: X: Y: Z:) do ( 

 for %%b in (%%a) do ( 

		if exist %%b ( 
			
			echo %%b

		) 
		
	) 


) 
goto:eof
