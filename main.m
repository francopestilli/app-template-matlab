% brainlife.io App Template for MatLab code
%
% This file is a template for a matlab-based brainlife.io App 
%
% As example the App simply loads a T1w NIfTI-1 file and resamples it a 1
% mm isotropic resolution
%
% When an App is requested to run on brainlife.io, the platform will do the following:
% A. Stage the code inside this git repo on a computing resource.
% B. Stage the input data requested to run the App on.
% C. Created a config.json in the same working directory of the App and Data in the computing resource.
%
% The config.json file contains the parameters and the path to the input data needed for the App to run. 
% The App paramters are set by the brainlife.io users interface when the App is called and saved inside the config.json
% The input data (a T1w nifti file in this case) is selected by the user during the process of requesting the App on brainlife.io 
% 
% Running the App on brainlife.io really means "execute this main.m script on a computing resource."
%
% You can also run this App locally by launching the script main.m inside a MatLab prompt. 
% If you want to do that you will need to:
% A. Download the code for this App from https://github.com/francopestilli/app-template-matlab. Save it inside a directory accessible to MatLab, 
%    for examople, /mycomputerpath/myResearch/thisTestApp
% B. Copy a T1w NIfTI-1 file inside the same folder: /mycomputerpath/myResearch/thisTestApp
% C. Create a config.json of your own an example file is provided with this repository. The fields inside the config.json my be set as required
% 
%
% Author: Franco Pestilli
%
% Copyright (c) 2020 brainlife.io 
%
% The University of Texas at Austin

% add submodules (libraries necessary to run some of the code below.
% submodules added to the GitHub repository for this App will be 
% automatically downloaded with the App but will need to be explctily 
% added to the MatLab path. 
addpath(genpath(pwd))

% Load the input T1.nii file the path in config.json
% This command requires the submodule that allows reading JSON files in
% MatLab
config = loadjson('config.json');

% Now we have the name of the T1w file we would like to load. next we use
% the NIfTI reader/writer toolbox from Jimmy Shen to load it into MatLab
T1w = load_nii( config.t1 );

% Finally we write as output the same file resliced at 1 mm resolution.
% This will save out a file called t1w_resliced
%
% reslice_nii(old_fn, new_fn, [voxel_size], [verbose], [bg], ...
%                             [method], [img_idx], [preferredForm]);
reslice_nii(config.t1, 't1w_resliced',config.outres)


	
