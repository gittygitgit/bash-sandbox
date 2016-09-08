#!/bin/bash
<< DOC

See https://google.github.io/styleguide/shell.xml
See https://lug.fh-swf.de/vim/vim-bash/StyleGuideShell.en.pdf


Script Header
---------------------------------------

#!/bin/bash
#
# Perform hot backups of Oracle databases.



Function Header
---------------------------------------
#!/bin/bash
#
# Perform hot backups of Oracle databases.

export PATH='/usr/xpg4/bin:/usr/bin:/opt/csw/bin:/opt/goog/bin'

#######################################
# Cleanup files from the backup dir
# Globals:
#   BACKUP_DIR
#   ORACLE_SID
# Arguments:
#   None
# Returns:
#   None
#######################################
cleanup() {
  ...
}



TODO
---------------------------------------
(mrmonkey): Handle the unlikely edge cases (bug ####)


Formatting - Pipelines
---------------------------------------
# All fits on one line
command1 | command2

# Long commands
command1 \
  | command2 \
  | command3 \
  | command4


Formatting - Line length and long strings
---------------------------------------
# DO use 'here document's
cat <<END;
I am an exceptionally long
string.
END

# Embedded newlines are ok too
long_string="I am an exceptionally
  long string."


Loops
---------------------------------------
Put ; do and ; then on the same line as the while, for or if.
for dir in ${dirs_to_cleanup}; do
  if [[ -d "${dir}/${ORACLE_SID}" ]]; then
    log_date "Cleaning up old files in ${dir}/${ORACLE_SID}"
    rm "${dir}/${ORACLE_SID}/"*
    if [[ "$?" -ne 0 ]]; then
      error_message
    fi
  else
    mkdir -p "${dir}/${ORACLE_SID}"
    if [[ "$?" -ne 0 ]]; then
      error_message
    fi
  fi
done


Function names
---------------------------------------
# Single function
my_func() {
  ...
}

# Part of a package
mypackage::my_func() {
  ...
}


Variable names
---------------------------------------
for zone in ${zones}; do
  something_with "${zone}"
done

Source filenames
---------------------------------------
for zone in ${zones}; do
  something_with "${zone}"
done


Read-only variables
---------------------------------------
Use readonly or declare -r to ensure they're read only.

zip_version="$(dpkg --status zip | grep Version: | cut -d ' ' -f 2)"
if [[ -z "${zip_version}" ]]; then
  error_message
else
  readonly zip_version
fi



Local variables
---------------------------------------
my_func2() {
  local name="$1"

  # Separate lines for declaration and assignment:
  local my_var
  my_var="$(my_func)" || return

  # DO NOT do this: $? contains the exit code of 'local', not my_func
  local my_var="$(my_func)"
  [[ $? -eq 0 ]] || return

  ...
}
DOC
