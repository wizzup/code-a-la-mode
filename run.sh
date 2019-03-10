#! /usr/bin/env nix-shell
#! nix-shell -i bash -p openjdk11 python3

# TODO: reduce dependencies, move python dependency to python AI file

# log should save at script caller directory
CWD=$(pwd)
echo "cwd : $(pwd)"

# make use of script full path, this will allow running `run.sh` from anywhere
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# cd into script directory
pushd $DIR >/dev/null
echo "cwd : $(pwd)"

P1=${1:-"python ./src/test/starterkit/starterAI.py"}
P2=${2:-"python ./src/test/starterkit/starterAI.py"}
P3=${3:-"python ./src/test/starterkit/starterAI.py"}

echo "Bot#1 : $P1"
echo "Bot#2 : $P2"
echo "Bot#3 : $P3"

java -jar ./target/code-a-la-mode-1.0-SNAPSHOT-shaded.jar \
  -p1 "$P1" -p1name "bot#1" \
  -p2 "$P2" -p2name "bot#2" \
  -p3 "$P3" -p3name "bot#3" \
  -l "$CWD/runlog.txt" \
  -s

# cd back to caller directory
popd
