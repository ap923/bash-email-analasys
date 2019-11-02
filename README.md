# bash-email-analasys
 bash script that analyzes the email addresses in a set of text documents. The script finds out 1) the email addresses that appear the most times in the documents and their numbers of occurrence, and 2) a complete list of emails with the same domains.
All the documents are saved in files, and are organized in a directory with several levels of subdirectories. Thus, your bash script needs to search all the files in the directory for email addresses,
rank the email addresses based on the number of occurrences, and print out top N email addresses,
where N is a number specified as one argument in the command line when the script runs, and is
between1 and 100 (including 1 and 100). Your script also extracts the domains in these top N email
addresses, and search the documents for a list of email addresses with the same domains.
An email address is in the format of localpart@domain. It consists of parts: a local-part, an @
symbol, and a domain name. For example, in my email address xiaoning.ding@njit.edu,
xiaoning.ding is the local part, and njit.edu is the domain name. Different email systems may have
different requirements on valid email addresses. However, in this assignment, the requirement for
valid email addresses (i.e., the rules that your script uses to locate the email addresses from the
source code) is as follows:
 Case-insensitive
 The local-part of the email address may use any of these ASCII characters:
o uppercase and lowercase letters A to Z and a to z;
o digits 0 to 9;
o dot ., provided that it is not the first or last character, and provided also that it does not
appear consecutively (e.g. John.Doe@example.com and john.m.doe@example.com
are allowed; but John..Doe@example.com is not allowed).
 The domain name part is a list of dot-separated labels. Each label consists of
o uppercase and lowercase letters A to Z and a to z;
o digits 0 to 9, provided that the label is NOT the top-level domain name (e.g., com, edu,
gov, etc. i.e., top-level domain name should consist of all letters)
o hyphen -, provided that it is not the first or last character in the label.
