### To filter commented lines in a configuration file
`cat someconf.ini | grep -v ^#`\
-v means inverted match

### To search for a word in all files in the folder recursively
`grep -wirn . -e wordtosearch`\
-w: search for whole words\
-i: ignore case\
-r: recursive search in folders\
-n: in output show line number of each file\
