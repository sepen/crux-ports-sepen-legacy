#!/bin/sh

groupadd -g 81 nofiles
useradd -u 81 -g nofiles -d /var/qmail/alias alias
useradd -u 82 -g nofiles -d /var/qmail qmaild
useradd -u 83 -g nofiles -d /var/qmail qmaill
useradd -u 84 -g nofiles -d /var/qmail qmailp
groupadd -g 82 qmail
useradd -u 85 -g qmail -d /var/qmail qmailq
useradd -u 86 -g qmail -d /var/qmail qmailr
useradd -u 87 -g qmail -d /var/qmail qmails

