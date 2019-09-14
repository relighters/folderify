# folderify
A bash shell script that moves image sequences into newly created folders of the same name.

**Usage**
- Copy the *folderify.sh* script into the directory containing image sequences you'd like moved into folders.<br/>
- In Terminal, cd to your image sequence directory, and run the script by entering *./folderify.sh*
- All image sequences in the directory will be moved into new folders of the same name.
- Folder names are parsed from the image sequence filenames up to the first "." period, where:

*project_sequence01_v1_grd001.00001.dpx*<br/>
*project_sequence01_v1_grd001.00002.dpx*<br/>
*project_sequence01_v1_grd001.00003.dpx*<br/>
[etc]

are moved into a newly created folder named... 

*project_sequence01_v1_grd001*<br/><br/>

**Option Flags**

Specify the target file extention [dpx, exr, tif, etc]<br/>
*-e [file extension]*<br/><br/>
Example: *./folderify.sh -e dpx*
*/project_sequence01_v1_grd001/project_sequence01_v1_grd001.00001.dpx*<br/><br/>

Specify a sub-directory to be included inside the named image sequence folder [e.g, a resolution folder]<br/>
*-d [sub-directory name]*<br/><br/>
Example: *./folderify.sh -e dpx -d 1920x1080*<br/>
*/project_sequence01_v1_grd001/1920x1080/project_sequence01_v1_grd001.00001.dpx*<br/><br/>


Note: If needed, make folderify.sh executeable by running "chmod +x" on the script itself in Terminal:<br/>
*chmod +x folderify.sh* 