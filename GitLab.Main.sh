#!/bin/sh
sh ./OcttKB.EmptyDate.sh
sh ./SetupGitProfile.sh
CommitCheck="$(git log -1 --pretty=%B)"
CommitMsg0="OcttKB Cross-Repo Sync"
[ "$CommitCheck" != "$CommitMsg0 (HTML to Raw)" ] && [ "$CommitCheck" != "$CommitMsg0 (Raw to HTML)" ] && sh ./GitLab.CrossRepoSync.sh || true
