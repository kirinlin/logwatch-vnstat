#!/usr/bin/env bash
# vim :let g:is_bash=1: set autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2 filetype=sh
# Logwatch vnstat config
cat > /etc/logwatch/scripts/services/vnstat <<SCRIPTDOC
#!/usr/bin/env bash
/usr/bin/vnstat
SCRIPTDOC

chmod +x /etc/logwatch/scripts/services/vnstat

cat > /etc/logwatch/conf/services/vnstat.conf <<SCRIPTDOC
Title = "vnstat"
LogFile = NONE
SCRIPTDOC
