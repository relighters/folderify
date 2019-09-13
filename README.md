# folderify
a bash shell script that moves dpx image sequences into newly created folders of the same name.

Usage
- Copy the folderify.sh script into the directory containing image sequences you'd like moved into folders.
- In Terminal, cd to your image sequence directory, and run the script by entering "./folderify.sh"
- All image sequences in the directory will be moved into new folders of the same name.
- Folder names are parsed from the image sequence filenames up to the first "." period, where...

project_sequence01_v1_grd001.00001.dpx
project_sequence01_v1_grd001.00002.dpx
project_sequence01_v1_grd001.00003.dpx
etc..

...would be moved into a newly created folder named "project_sequence01_v1_grd001".
