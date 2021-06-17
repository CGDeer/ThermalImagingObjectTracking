# ThermalImagingObjectTracking
This repo is looking to develop a method to track falling objects in thermal imaging video applications.

It is specifically being developed for a NIOSH project headed by Ed Wellman at the University of Arizona that aims to detect falling rock events at mining sites with thermal imaging cameras to improve understanding of fracture and spill over events.  As the collection device has 3+ cameras on it, and is running 24 hours per day, the researchers have asked for a method to detect and write out timestamps for rockfall events in each video feed.  

## Data Input
The data files that will be use will come from a number of different types of thermal imaging equipment, but it is expected that it can be converted to a common mp4/MPEG or AVI formats before it is utilized here.  If this does not prove to be the case, I will make a guide to converting the data from the given format into one of these two formats using VLC player.
Data will be loaded into the matlab script using the following pairs of commands: for mp4 files we will use the VideoReader(filename) command.  AVI files will use the aviread(filename) command.

## Data Output
The script will create a csv file with the filename and event start time and event end time for all events detected within the video.

## Programs
MATLAB (2021a Update 3) for running code locally or MATLAB (2020b) if running MATLAB interactively on the PUMA HPC

The following two sections apply to running MATLAB locally:
## MATLAB Installation (for desktop or laptop deployments, on a Windows machine)
This project will use the 2021a Update 3 MATLAB installation.  To install it: 
1) sign in using your MATLAB account on https://matlab.mathworks.com/.  
2) Click on 'Install MATLAB on your computer" located at the top right of your screen.
3) Follow the onscreen instructions.
--When you get to the screen asking which product you want to install, make sure that the following are selected: MATLAB, Computer Vision Toolbox, Data Acquisition Toolbox, Information Acquisition Toolbox, and the Image Processing Toolbox. (Note that under these settings you will need 10.15 GB available for the installation of the files).

## Using MATLAB on a local windows machine:
1) Launch your MATLAB instance from your start menu
2) (This step needs to only be done once) Set you local path to include the folder that you data resides in and the folder that the script.m (to be named later) resides in.  
3) Run the script from the MATLAB command line

The following two section apply to running MATLAB on the open on demand interactive terminal for MATLAB on the PUMA HPC.
## Logging in to the HPC:
1) Using your browser, navigate to ood.hpc.arizona.edu/pun/sys/dashboard
2) Input your NET-ID+ credentials and authenticate using your preferred method of 2FA
3) From the dashboard, click on Interactive Apps > PUMA MATLAB
4) Fill out the web form with the following options going from top to bottom: MATLAB 2020b, Runtime: 2 hours (this is a guess at this point), 3 cores (again a guess), Number of GPUS: 0 (again a guess, this might change if we find a good CUDA enabled solution), hpcteam: 'your hpc team designation', Queue: Standard.
5) Click the launch button.
6) Once your session has been created click on 'Launch PUMA MATLAB'

## Setting your path on the HPC PUMA MATLAB interactive terminal (follow these instructions one time per user account)
1) Click on 'Environment' under the HOME tab.
2) This opens a dropdown menu from which you should click on 'Set Path'
3) Click on 'Add Folders' and navigate to the folder with your data and then click 'Open'
4) Click on 'Add Folders' and navigate to where you have placed your copy of the script.m file, and then click 'Open'

