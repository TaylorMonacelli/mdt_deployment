wget.exe --no-check-certificate --limit-rate=2m --directory-prefix="%CD%\.." --timestamping --input-file=urls_mdt.txt
cd ..
scripts\7za.exe x -y -o. "MDT 2013 Documentation.zip"
