# common_flags="-t ts -a stackTrace -a stacktrace -a record"

alias loco="fblog -f 'string.lower(level) ~= \"info\" and string.lower(level) ~= \"debug\"'"
alias locoi="fblog -f 'string.lower(level) ~= \"debug\"'"
# alias locoa="fblog $common_flags"
