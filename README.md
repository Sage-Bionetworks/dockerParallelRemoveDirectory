# dockerParallelRemoveDirectory
deletes directory files in parallel for the DM challenge.

parameterized version of Thomas Schaffter's parallel removal.

## Usage
docker run --rm -v /preprocessedData:/preprocessedData dockerParallelRemoveDirectory directory1 directory2 ... directoryN
