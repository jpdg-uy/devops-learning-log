# Week 02 – Summary

## What I learned
 Got to play with the following commands:

pwd; whoami; uname -r; lsb_release -a
ls -l ~; cd /tmp; touch demo.txt; echo hi >> demo.txt; cat demo.txt
mkdir -p ~/play/{alpha,beta}; mv /tmp/demo.txt ~/play/alpha/
chmod 600 ~/play/alpha/demo.txt; chmod -R 755 ~/play
ps aux | head; pgrep -l bash; top -b -n1 | head -20
ip a | head -20; ss -tuna | head -10; dig github.com +short

most of them already knew.
 

## Hands-on
- 

## Notes / Links

Piping large outputs like --help or man [command] into less (man ss | less)
proved to be quite useful. tip: use /[what you are looking for] for forward searching, ?[what you are...] for backwards searching. :q closes the visor.

When using ls -l, we get info about the file in the form of a 10 char stringfirst char: - regular file d directory l link etc
next 9: 3 for owner rights 3 for group rights and 3 for other users rights in the form of rwx (read, write, execute) or - (not assigned)

pgrep was a nice find too.
