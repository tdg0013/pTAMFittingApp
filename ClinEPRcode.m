%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 8);

% Specify range and delimiter
opts.DataLines = [36, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["DataFieldGaussX", "YInPhase"];
opts.SelectedVariableNames = ["DataFieldGaussX", "YInPhase"];
opts.VariableTypes = ["double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
ClinEPR = readtable("D:\Downloads\ClinEPR.ask", opts);
Spectrum=table2array(ClinEPR);
B0=Spectrum(:,1);
spc=Spectrum(:,2);
plot(Spectrum(:,1), Spectrum(:,2))

%% Clear temporary variables
clear opts