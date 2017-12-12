# docker-enumall

# build enumall docker image

````shell
./build.sh
````

# api keys

You must create a .env file that enumall.sh will pass to docker.

enumall requires google_api, google_cse, shodan_api, and enumallfile=/words/enumalloutput.txt to run at the minimum.

recon-ng allows for a lot of different sources so any other keys you add help.  For more information please see [https://bitbucket.org/LaNMaSteR53/recon-ng/wiki/Usage%20Guide#!acquiring-api-keys](https://bitbucket.org/LaNMaSteR53/recon-ng/wiki/Usage%20Guide#!acquiring-api-keys)

# run enumall

````shell
./enumall.sh example.com -w /words/fierce_hostlist.txt
````