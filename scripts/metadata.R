#How to set up metadata following https://annakrystalli.me/dataspice-tutorial/

# Get the last version of dataspice and load it
#install.packages("readr")
install.packages("devtools")
devtools::install_github("ropenscilabs/dataspice")
library(readr)
library(dataspice)

#load data 
d <- read.csv("data/example_dataset.csv")

#create basic .csv metadata files and folders.
create_spice()

#Add creators
edit_creators()

#Add how to access the data
prep_access()
edit_access()

#Add metadata
edit_biblio()

#Describe variables
prep_attributes()
#colnames(d)
edit_attributes()

#create a json file
write_spice()

#look at the json:
jsonlite::read_json(here::here("data", "metadata", "dataspice.json")) %>% listviewer::jsonedit()

#build a webpage!
build_site()


