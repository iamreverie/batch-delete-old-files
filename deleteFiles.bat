:: Path - Set Path to Delete
set deleteFilePath="PLEASE PUT ABSOLUTE PATH HERE"

:: Number of days to retain files 
set fileType=docx

:: Number of days to retain files - INITIAL IS 90 days
set retaindays=90

echo off
ForFiles /p "%deleteFilePath%" /m *.%fileType% /s /d -%retaindays% /c "cmd /c del @file"