# dockerParallelRemoveDirectory
deletes directory files in parallel for the DM challenge.

parameterized version of Thomas Schaffter's parallel removal.

## Usage
docker run --rm -v /path/onHost/:/path/onDockerImage/directory1 dockerParallelRemoveDirectory directory1 directory2 ... directoryN

### example
~~~~
cd ~
mkdir plsdelete
mkdir plsdelete2
echo asdf>>plsdelete/asdf.txt
echo qwerty>>plsdelete2/qwerty.txt
ls plsdelete*
docker run --rm -v ~/plsdelete:/plsdelete -v ~/plsdelete2:/plsdelete2 dockerParallelRemoveDirectory plsdelete plsdelete2
ls plsdelete*
~~~~
