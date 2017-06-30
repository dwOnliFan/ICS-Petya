ICS-Petya Resources
=================

Trying to get content out quickly so this won't be pretty.

This is an attempt to collect scripts and quick go-bys for asset owners and incident responders in the Industrial Control Systems sector.

## Resources
### Powershell Scripts
[Create-PetyaVaxFiles](/PS1/Create-PetyaVaxFiles.ps1) creates and verifies magic perfc files in c:\windows

### Links to Patches
[Microsoft® Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=ms17-010) - Offline patches for MS17-010

### Links to Tools/Utilities

[NMap](https://nmap.org/download.html) for quick and dirty scan to look for vulnerable hosts.  USE WITH EXTREME CAUTION so as not to knock devices off the network.  

Example nmap command line `nmap -sC -p 445 --max-hostgroup 3 --open --script smb-vuln-ms17-010.nse X.X.X.X/X`

### Relevant Reading - Petya
https://www.binarydefense.com/petya-ransomware-without-fluff/

### General Reading (WannaCry/Petya/NotPetya/MS17-010)
https://ics-cert.us-cert.gov/alerts/ICS-ALERT-17-135-01I

https://www.us-cert.gov/ncas/current-activity/2017/06/27/Multiple-Petya-Ransomware-Infections-Reported

### General Vendor Bulletins (WannaCry/Petya/NotPetya/MS17-010)
:lock: [Wonderware Bulletin](https://gcsresource.schneider-electric.com/support/securitycentral/bulletins/WW17_010_Updated_21June2017.html) - Actual Bulletin

[Rockwell Automation](http://www.rumsey.com/blog/rockwell-automation-recommended-mitigations-%E2%80%9Cwannacry%E2%80%9D-ransomware) - Summary of Bulletin

:lock: [Rockwell Automation](https://rockwellautomation.custhelp.com/app/answers/detail/a_id/1047348) - Actual Bulletin


Also reference list of vendor resources in [ICS-Cert](https://ics-cert.us-cert.gov/alerts/ICS-ALERT-17-135-01I) advisory

## License

MIT License. See the [LICENSE file](/LICENSE) for details.
