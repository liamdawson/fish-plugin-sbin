set -l sbin_path "/sbin"
set -l usr_sbin_path "/usr/sbin"
set -l usr_local_sbin_path "/usr/local/sbin"

contains -- $sbin_path $PATH
  or set -gx PATH $PATH $sbin_path

contains -- $usr_sbin_path $PATH
  or set -gx PATH $PATH $usr_sbin_path

contains -- $usr_local_sbin_path $PATH
  or set -gx PATH $PATH $usr_local_sbin_path
