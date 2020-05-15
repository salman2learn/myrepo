### To filter commented lines in a configuration file
`cat someconf.ini | grep -v ^#`\
-v means inverted match

### To search for a word in all files in the folder recursively
`grep -wirn . -e wordtosearch`\
-w: search for whole words\
-i: ignore case\
-r: recursive search in folders\
-n: in output show line number of each file\

### To create your own keytab file (kerberos env)
1. Open the utility ktutil prompt
`ktutil`
2. Add an entry to the keytab In-Memory
`add_entry -password -p login@ABC.COM -k 1 -e arcfour-hmac`
3. Save the KeyTab entry to a file
`write_kt mykeytab.kt`
4. Exit using Ctrl Z
5. Test your keytab
`kinit –k –t mykeytab.kt login@ABC.COM`
6. Optional: Put it in .bashrc
\
Note: Verify your domain from /etc/krb5.conf
