# dockerParallelRemoveDirectory
deletes directory files in parallel for the DM challenge.

parameterized version of Thomas Schaffter's parallel removal.

## Usage
docker run --rm -v /path/onHost/:/path/onDockerImage/directory1 dockerParallelRemoveDirectory directory1 directory2 ... directoryN

### example
docker run --rm -v ~/plsdelete:/plsdelete -v ~/plsdelete2:/plsdelete2 remove plsdelete plsdelete2
