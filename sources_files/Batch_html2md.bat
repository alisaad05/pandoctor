@echo off

::for %%i in (html/*.htm) do echo %%~ni

for %%i in (html/*.htm) do  (
							pandoc html/%%~ni.htm -o markdown/%%~ni.md
							echo Converted %%~ni to markdown
)

pause