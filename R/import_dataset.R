# download dataset from the UCI url
url <- "https://archive.ics.uci.edu/static/public/697/predict+students+dropout+and+academic+success.zip"
temp_zip <- tempfile(fileext = ".zip")
download.file(url, temp_zip, mode = "wb")
#unzip file
temp_dir <- tempdir()
unzip(temp_zip, exdir = temp_dir)
#build dataset
dataset <- read.csv(file.path(temp_dir, "data.csv"), sep = ";", stringsAsFactors = FALSE)