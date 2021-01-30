# LogDetectionLab
Vagrant AD Lab builder for log-based detection research and development

# blog post: http://www.boredhackerblog.info/2021/01/creating-active-directory-ad-lab-for.html

# requirements
- any new 4 core 8 thread cpu should work
- 16 gigs of RAM should be fine too
- install virtualbox, vagrant
- get a humio cloud account/ingest key

# usage
- run: git clone https://github.com/BoredHackerBlog/LogDetectionLab
- run: cd LogDetectionLab
- run: vagrant up
- walk away for like 30 minutes
- Change static IP in kali VM for interface eth1 to be 192.168.200.13
- to destroy the lab, run: vagrant destroy -f

# services and creds
- for host to guest port forwarding configuration, check the vagrantfile
- user vagrant is on all the machines, login with vagrant / vagrant
- create-users.ps1 has more user info

# bugs
- IP address in kali does not change through vagrant
- invoke-atomicredteam doesn't get installed on workstation1, AV issue

# resources i used to help me build this (there could be more that i missed. i had too many tabs open)
https://github.com/clong/DetectionLab

https://cyberdefenders.org/

https://github.com/cyberdefenders/DetectionLabELK

https://github.com/jckhmr/adlab

https://academy.tcm-sec.com/p/practical-ethical-hacking-the-complete-course

https://defensiveorigins.com/

https://defensiveorigins.com/trainings/

https://www.blackhillsinfosec.com/training/applied-purple-teaming-training/

https://app.vagrantup.com/StefanScherer

https://app.vagrantup.com/kalilinux/boxes/rolling

https://github.com/redcanaryco/atomic-red-team

https://atomicredteam.io/

https://github.com/redcanaryco/invoke-atomicredteam

https://docs.microsoft.com/en-us/sysinternals/downloads/sysmon

https://github.com/olafhartong/sysmon-modular

https://www.humio.com/
