# Copy assignment into each student's folder
# Run this from the day's folder
# example: 
# `~/Dev/wdi/homework/week_01/d_01`
# `assign`

assign(){
  # path to assignment. defaults to assignment folder.
  assignment=${1:-"ASSIGNMENT_FILES/"}
  # get list of directories
  array=(*/)
  # copy assignment folder into each student folder
  for dir in "${array[@]}"; do
    # don't copy assignment folder into assignment folder
    if [ "$dir" != "ASSIGNMENT_FILES/" ]
    then
      cp -rv $assignment $dir
    fi
  done
}