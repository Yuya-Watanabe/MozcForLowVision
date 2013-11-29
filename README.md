MozcForLowVisiion
=================
Build instruction is at https://code.google.com/p/mozc/wiki/WindowsBuildInstructions .

You don't need to download depot_tools.zip and extract depot_tools directry
because we added depot_tools directory as a git submodule.

depot_tools is a tool to sync your local mozc code to original code in Google Code.
It is a python script which invokes svn internally.
When you set PATH properly so that depot_tool finds python and svn,
it can be run both in cmd.exe and cygwin environment.
I prefer the latter, that is on cygwin. 
Install cygwin with its python and subversion package before you go on.

Open cygwin terminak, go to the top of this repository. In my case,
cd /cygdrive/c/Users/sasaki/Documents/GitHub/MozcForLowVision/ .

Initialize the repository by gclient,
python depot_tool/gclient.py config http://mozc.googlecode.com/svn/trunk/src .

Sync the repository with Google Code,
python depot_tool/gclient.py config .

