#!/usr/bin/expect -f

set timeout -1
spawn vncpasswd
match_max 100000
expect -exact "Using password file /root/.vnc/passwd\r
Password: "
send -- "acoman\r"
expect -exact "\r
Verify:   "
send -- "acoman\r"
expect -exact "\r
Would you like to enter a view-only password (y/n)? "
send -- "n\r"
expect eof

