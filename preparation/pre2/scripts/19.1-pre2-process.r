########################################################################
### Set basic configuration variables
########################################################################

ppWave <- "19.1";
ppReport <- 'pre2';

########################################################################
### Packages
########################################################################

if (!require('ufs', quietly = FALSE)) {
  stop("You need to have the ufs package installed!");
}
safeRequire('rmarkdown');
safeRequire('here');

########################################################################
### Set the variables with the paths
########################################################################

### Set the additional paths
outputPath <- here('preparation', 'pre2', 'output');
workingPath <- here('preparation', 'pre2', 'output');
dataPath <- here('preparation', 'pre2', 'data--[[PUBLIC]]');
scriptPath <- here('preparation', 'pre2', 'scripts');
sharedPath <- normalizePath(file.path(here(), "../partypanel-shared"));

########################################################################
### Login credentials for uploading report
########################################################################

reportLoginStringFilePath <-
  file.path(sharedPath, 'report-upload-login-string.txt')

########################################################################
### Render report
########################################################################

render(file.path(scriptPath, paste0(ppWave, "-",
                                    ifelse(nchar(ppReport)>0,
                                                   paste0(ppReport, "-"),
                                                   ""),
                                    'process.Rmd')),
       output_file = file.path(workingPath,
                               'index.html'),
       intermediates_dir = workingPath);

########################################################################
### Uploading report to secure site
########################################################################

uploadPassword <- readLines(reportLoginStringFilePath);

if (require('RCurl')) {
  if (url.exists('partypanel.nl')) {
    ftpUpload(file.path(workingPath, 'index.html'),
              paste0("ftp://partypanel.nl/", ppWave, "/", ppReport, "/index.html"),
              userpwd=uploadPassword)
    cat("Uploaded report for wave ", ppWave, " to the secured site using FTP.\n", sep="");
  }
}

cat0("Report available at:\n\n  https://partypanel.nl/reports/", ppWave, "/", ppReport, "/\n\n");
