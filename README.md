# dockerParallelRemoveDirectory
deletes in parallel all files within specified directory for the DM challenge.

parameterized version of Thomas Schaffter's parallel removal.

## Usage
~~~~
docker run --rm -v /path/onHost/:/path/onDockerImage/directory1 [... -v /path/onHostN/:/path/onDockerImage/directoryN] dockerParallelRemoveDirectory directory1 [... directoryN]
~~~~
### example
setup 2 directories with files
~~~~
cd ~
mkdir plsdelete
mkdir plsdelete2
echo asdf>>plsdelete/asdf.txt
echo qwerty>>plsdelete2/qwerty.txt
ls plsdelete*
~~~~
run the docker container
~~~~
docker run --rm -v ~/plsdelete:/plsdelete -v ~/plsdelete2:/plsdelete2 dockerParallelRemoveDirectory plsdelete plsdelete2
~~~~
check the folders after
~~~~
ls plsdelete*
~~~~
