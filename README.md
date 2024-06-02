# save_exFAT_onSonoma
Seems Sonoma screwed up something, especially our exFat format SSD access.    
Some people say you can format your device, and make it become other format to readable.  
It's impractible for me. First, I need those data though, so do you.  
  
Actually, it still able to be amount, for some reasons. (I don't know why, ask Apple)  
So I made this tool to help to make macbook mount our external device automatically.  



### First of all
Using `diskutil list` first to get your IDENTIFIER ID.  
For example, this is my list.  
```
/dev/disk0 (internal, physical):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:     XXXXXXXXXXXXXXXXXXXXXX                        *251.0 GB   disk0
   1:                        EFI EFI                     314.6 MB   disk0s1
   2:                 XXXXXXXXXX XXXXXXXXXXXXXXX         250.7 GB   disk0s2

/dev/disk1 (synthesized):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      APFS Container Scheme -                      +250.7 GB   disk1
                                 Physical Store disk0s2
   1:                APFS Volume XXXXXXXXXXXXXXXXXXX     179.9 GB   XXXXXXX
   2:                APFS Volume Preboot                 2.1 GB     XXXXXXX
   3:                APFS Volume Recovery                1.2 GB     XXXXXXX
   4:                APFS Volume VM                      24.6 KB    XXXXXXX
   5:                APFS Volume XXXXXXXXXXXX            10.2 GB    XXXXXXX
   6:              XXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXX 10.2 GB    XXXXXXX

/dev/disk2 (external, physical):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      XXXXXXXXXXXXXXXXXXXXX                        *2.0 TB     disk2
   1:         XXXXXXXXXXXXXXXXXX                         134.2 MB   disk2s1
   2:       Microsoft Basic Data ABCDEF                  2.0 TB     disk2s2
```
The name of my exFat SSD is ABCDEF, then my `IDENTIFIER ID` would be `disk2s2`  

****
### Second, and final of all   

Run `remount_exfat.sh` and add your ID after script, and waiting for it.   
For instance,   
```
>> sh remount_exfat.sh disk2s2
...
Volume(s) mounted successfully
Volume(s) mounted successfully
Volume(s) mounted successfully
Volume(s) mounted successfully
Volume(s) mounted successfully
Volume(s) mounted successfully
Seems Sonoma accepted your external device finally. Please check your Volumns folder ( or your desktop.)

>> ls /Volumes/
Macintosh HD	ABCDEF
```


P.S. This script only for temporary using, especially before Apple fix this issue.   
For Apple, not only this exFAT accept issue, please also give the function of Ipad external monitor back.  
