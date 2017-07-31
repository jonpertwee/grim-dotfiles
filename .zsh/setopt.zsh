## SetOpts and Parameters
# Changing Dirs {{{

setopt auto_cd

# }}}
# Completions {{{

setopt auto_list
setopt auto_menu
setopt auto_name_dirs
setopt auto_param_keys
setopt auto_param_slash
setopt complete_aliases
setopt completeinword
setopt glob_complete
setopt correct

# }}}
# Expansion/Globbing {{{

setopt glob
setopt case_glob
setopt extended_glob
setopt rc_expand_param
setopt glob_dots
setopt nohashdirs

# }}}
# History {{{

setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt inc_append_history
setopt no_share_history

# }}}
# I/O {{{

setopt correct
setopt path_dirs
setopt print_exit_value
setopt check_jobs
setopt monitor

# }}}
# Prompts {{{

setopt prompt_subst
setopt transient_rprompt

# }}}
# Misc {{{

autoload -Uz colors compinit promptinit
colors
promptinit
compinit -d $CACHEDIR/zcompdump
# }}}
# vim:foldmethod=marker:foldlevel=0
