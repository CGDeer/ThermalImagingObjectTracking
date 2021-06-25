
%%Load folder of videos as a data store, change 'loc's' file path to the
%%path pointing to your video archive. Note fds stands for file data system.
%%%MAIN LOOP
loc = "C:\Users\Christine Deer\Downloads\02242021-SV\02242021-SV";
fds = fileDatastore(loc, 'ReadFcn', @videoReader, 'IncludeSubfolders', ...
    true, 'FileExtensions', '.mp4')

%%FUNCTIONS
%%initialize the video reader as a function to be called by the main loop.
% function v contains no settings to be adjusted.
function v = videoReader(file)
v = videoReader(file);
end

