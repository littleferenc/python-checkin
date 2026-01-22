#!/usr/bin/env bash
set -e


#ensure git command is present
# command -v git || exit 0
# command -v git > /dev/null 2>&1 || exit 0

#fetch file content from git server
#(script.sh from script branch)

#option 1 curl <url> | bash
curl 'https://raw.githubusercontent.com/littleferenc/python-checkin/refs/heads/script/script.sh' | bash
#option 2 - store to variable/file and execute
#script_content="(url 'https://raw.githubusercontent.com/Hir$
#eval "$script_content"

which git > /dev/null 2> /dev/null || {
	echo "command git not present, exitting..."
	exit 0
}

#make temp dir
tmpdir="$(mktemp -d tmpdir.XXXXXXXX)"
cd "$tmpdir"
git clone 'git@github.com:littleferenc/python-checkin.git' myrepodir
cd myrepodir

#switch to branch script
git branch -a
git checkout script
#and run the script locally from repo
ls -la
pwd
./script.sh

echo
echo "End of bash script."
echo "Executing python.py"
echo

command -v python3 >/dev/null >&1 || {
	echo "command python3 not found, exitting..."
	exit 0
}

./python.py

current_branch="$(git branch | grep \* | awk '{print $2}')"

echo "your current branch is $current_branch"
