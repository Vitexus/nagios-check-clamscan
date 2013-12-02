#
# Regular cron jobs for the nagios-check-clamscan package
#
0 4	* * *	root	[ -x /usr/bin/nagios-check-clamscan_maintenance ] && /usr/bin/nagios-check-clamscan_maintenance
