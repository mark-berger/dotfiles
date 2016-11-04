function gulcd -d "Updates the latest commit to the current datetime."
  set hash (git log --format="%H" -n 1)
  set date (date "+%a %b %-e %T %Y %z")
  git filter-branch --env-filter \
  'if [ $GIT_COMMIT = '$hash' ]
   then
       export GIT_AUTHOR_DATE="'$date'"
       export GIT_COMMITTER_DATE="'$date'"
   fi' -f
end
