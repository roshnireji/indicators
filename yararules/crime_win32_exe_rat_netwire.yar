rule crime_win32_exe_rat_netwire{ 
meta:

description = "AlienSpy"
author = "Fidelis Cybersecurity"
reference = "Fidelis Threat Advisory #1017 - Phishing in Plain Sight - June 9, 2015"

hash = "fd5a753347416484ab01712786c407c4" 

strings:
       $sa = "StubPath"
       $sa = "CONNECT"
       $sa = "200 OK"
       $sa = "GET"
       $sa = "Host"
       $sa = "Connection"
       $sa = "Firefox"
       $sa = "Chrome"
       $sa = "Opera"
       $sa = "Outlook"
       $sa = "NSS_Shutdown"
       $sa = "NSSBase64_DecodeBuffer"
       $sa = "NSS_Init"
       $sa = "NSS_Shutdown"
       $sa = "name" nocase
       $sa = "password"
       $sa = "Server"
       $sa = "LANMANNT"
       $sa = "SERVERNT"
       $sa = "[Backspace]"
       $sa = "[Enter]"
       $sa = "[Tab]"
       $sa = "[Print Screen]"
       $sa = "mozsqlite"
       $sa = "nssutil"
       $sa = "sqlite"
       $sa = "Email"
       $sa = "POP3 User"
       $sa = "POP3 Server"
       $sa = "POP3 Password"
       $sa = "IMAP User"
       $sa = "IMAP Server"
       $sa = "IMAP Password"
       $sa = "HTTP User"
       $sa = "HTTP Server"
       $sa = "HTTP Password"
       $sa = "SMTP User"
       $sa = "SMTP Server"
       $sa = "SMTP Password"
       
condition:
(uint16(0) == 0x5A4D) and (all of them)
}