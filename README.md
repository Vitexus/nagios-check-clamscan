nagios-check-clamscan
=====================

package for Clamav Antivirus chceck and reporting via Nagios / Icinga


Installation instructions
=========================

Install package to target machine and edit /etc/clamav/clamscan.conf with list of scanned directories (one by line)


 * wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
 * echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/vitexsoftware.list
 * aptitude update
 * aptitude install nagios-check-clamscan


Add icinga/nagios service:


define service {                                                                                                                                                                                                                                   
      check_command                check_nrpe!check_clamscan!a                                                                                                                                                                                   
      host_name                    example.hostname.com                                                                                                                         
      service_description          Clamav Virus check                                                                                                                     
      use                          generic-service                                                                                                                                                                                               
}    
