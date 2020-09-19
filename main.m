% brainlife.io App Template for MatLab code
%
% This file is a template for a matlab-based brainlife.io App that simply loads a T1w NIfTI-1 file.
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

% EDIT THE CODE BELOW TO REUSE THIS TEMPLATE

% add submodules (libraries necessary to run some of the code below.

% load inputs from config.json

	
