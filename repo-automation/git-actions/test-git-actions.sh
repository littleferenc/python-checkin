#!/bin/bash

echo "Spustam make-changes.sh"
/home/frturcik/pas/git/repos/python-checkin/repo-automation/git-actions/make-changes.sh

echo "Spustam push-changes.sh"
/home/frturcik/pas/git/repos/python-checkin/repo-automation/git-actions/push-changes.sh

echo "Spustam fetch-changes.sh"
/home/frturcik/pas/git/repos/python-checkin/repo-automation/git-actions/fetch-changes.sh

echo "Vsetky git akcie prebehli uspesne"
