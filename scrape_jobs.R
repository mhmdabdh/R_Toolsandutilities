library(rvest)
library(tidyverse)
library(data.table)
library(XML)
library(stringr)
library(dplyr)
library(readr)
library(pandas)


dir.create("scrape_jobs")

########################################################################
#       STAGE 1 - SCRAPE THE DATA FROM JOB PORTAL (INDEED.COM)         #
########################################################################

##############################################################################################################
##1. Fetching Data for "data scientist" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       description = character(),
                       stringsAsFactors=FALSE) 


for (i in seq(0, 100, 10)){
  url_ds <- paste0('https://www.indeed.com/jobs?q=data+scientist&l=all&start=',i)
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#resultsCol .jobtitle') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#resultsCol .company') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('#resultsCol .location') %>%
    html_text() %>%
    str_extract("(\\w+.)+,.[A-Z]{2}")   
  #summary
  summary <- var %>%
    html_nodes('#resultsCol .summary') %>%
    html_text() %>%
    str_extract(".+")
  
  #link
  link <- var %>%
    html_nodes('#resultsCol .jobtitle .turnstileLink, #resultsCol a.jobtitle') %>%
    html_attr('href') 
  link <- paste0("https://www.indeed.com",link)
  
  listings <- rbind(listings, as.data.frame(cbind(title,
                                                  company,
                                                  location,
                                                  summary,
                                                  link)))
}

listings
warnings()
write.csv(listings, "scrape_jobs\\data_scientist.csv")
##############################################################################################################



##############################################################################################################
##2. Fetching Data for "program manager" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       description = character(),
                       stringsAsFactors=FALSE) 



for (i in seq(0, 100, 10)){
  url_ds <- paste0('https://www.indeed.com/jobs?q=program+manager&l=all&start=',i)
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#resultsCol .jobtitle') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#resultsCol .company') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('#resultsCol .location') %>%
    html_text() %>%
    str_extract("(\\w+.)+,.[A-Z]{2}")   
  #summary
  summary <- var %>%
    html_nodes('#resultsCol .summary') %>%
    html_text() %>%
    str_extract(".+")
  
  #link
  link <- var %>%
    html_nodes('#resultsCol .jobtitle .turnstileLink, #resultsCol a.jobtitle') %>%
    html_attr('href') 
  link <- paste0("https://www.indeed.com",link)
  
  listings <- rbind(listings, as.data.frame(cbind(title,
                                                  company,
                                                  location,
                                                  summary,
                                                  link)))
}

listings
warnings()
write.csv(listings, "scrape_jobs\\program_manager.csv")
##############################################################################################################





##############################################################################################################
##3. Fetching Data for "sde"  and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       description = character(),
                       stringsAsFactors=FALSE) 



for (i in seq(0, 100, 10)){
  url_ds <- paste0('https://www.indeed.com/jobs?q=sde&l=all&start=',i)
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#resultsCol .jobtitle') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#resultsCol .company') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('#resultsCol .location') %>%
    html_text() %>%
    str_extract("(\\w+.)+,.[A-Z]{2}")   
  #summary
  summary <- var %>%
    html_nodes('#resultsCol .summary') %>%
    html_text() %>%
    str_extract(".+")
  
  #link
  link <- var %>%
    html_nodes('#resultsCol .jobtitle .turnstileLink, #resultsCol a.jobtitle') %>%
    html_attr('href') 
  link <- paste0("https://www.indeed.com",link)
  
  listings <- rbind(listings, as.data.frame(cbind(title,
                                                  company,
                                                  location,
                                                  summary,
                                                  link)))
}

listings
warnings()
write.csv(listings, "scrape_jobs\\sde.csv")
##############################################################################################################








##############################################################################################################
##4. Fetching Data for "account manager" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       description = character(),
                       stringsAsFactors=FALSE) 



for (i in seq(0, 100, 10)){
  url_ds <- paste0('https://www.indeed.com/jobs?q=account+manager&l=all&start=',i)
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#resultsCol .jobtitle') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#resultsCol .company') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('#resultsCol .location') %>%
    html_text() %>%
    str_extract("(\\w+.)+,.[A-Z]{2}")   
  #summary
  summary <- var %>%
    html_nodes('#resultsCol .summary') %>%
    html_text() %>%
    str_extract(".+")
  
  #link
  link <- var %>%
    html_nodes('#resultsCol .jobtitle .turnstileLink, #resultsCol a.jobtitle') %>%
    html_attr('href') 
  link <- paste0("https://www.indeed.com",link)
  
  listings <- rbind(listings, as.data.frame(cbind(title,
                                                  company,
                                                  location,
                                                  summary,
                                                  link)))
}

listings
warnings()
write.csv(listings, "scrape_jobs\\account_manager.csv")
##############################################################################################################





##############################################################################################################
##5. Fetching Data for "marketing manager" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       description = character(),
                       stringsAsFactors=FALSE) 



for (i in seq(0, 100, 10)){
  url_ds <- paste0('https://www.indeed.com/jobs?q=marketing+manager&l=all&start=',i)
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#resultsCol .jobtitle') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#resultsCol .company') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('#resultsCol .location') %>%
    html_text() %>%
    str_extract("(\\w+.)+,.[A-Z]{2}")   
  #summary
  summary <- var %>%
    html_nodes('#resultsCol .summary') %>%
    html_text() %>%
    str_extract(".+")
  
  #link
  link <- var %>%
    html_nodes('#resultsCol .jobtitle .turnstileLink, #resultsCol a.jobtitle') %>%
    html_attr('href') 
  link <- paste0("https://www.indeed.com",link)
  
  listings <- rbind(listings, as.data.frame(cbind(title,
                                                  company,
                                                  location,
                                                  summary,
                                                  link)))
}

listings
warnings()
write.csv(listings, "scrape_jobs\\marketing_manager.csv")
##############################################################################################################





##############################################################################################################
##6. Fetching Data for "cloud engineer" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       description = character(),
                       stringsAsFactors=FALSE) 



for (i in seq(0, 100, 10)){
  url_ds <- paste0('https://www.indeed.com/jobs?q=cloud+engineer&l=all&start=',i)
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#resultsCol .jobtitle') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#resultsCol .company') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('#resultsCol .location') %>%
    html_text() %>%
    str_extract("(\\w+.)+,.[A-Z]{2}")   
  #summary
  summary <- var %>%
    html_nodes('#resultsCol .summary') %>%
    html_text() %>%
    str_extract(".+")
  
  #link
  link <- var %>%
    html_nodes('#resultsCol .jobtitle .turnstileLink, #resultsCol a.jobtitle') %>%
    html_attr('href') 
  link <- paste0("https://www.indeed.com",link)
  
  listings <- rbind(listings, as.data.frame(cbind(title,
                                                  company,
                                                  location,
                                                  summary,
                                                  link)))
}

listings
warnings()
write.csv(listings, "scrape_jobs\\cloud_engineer.csv")
##############################################################################################################
#END OF STAGE 1
##############################################################################################################








########################################################################
# STAGE 2 - SCRAPE THE DATA FROM SECOND JOB PORTAL (CAREERBUILDER.COM) #
########################################################################

##############################################################################################################
##1. Fetching Data for "data scientist" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       stringsAsFactors=FALSE) 


for (i in seq(0, 50, 10)){
  url_ds <- paste0('https://www.careerbuilder.com/jobs?keywords=data+scientist&page_number',i)
  #url_ds <- paste0('https://www.careerbuilder.com/jobs?keywords=Data+Scientist&location=&page_number=',i)
  
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#jobs_collection .b') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#jobs_collection span:nth-child(1)') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('span:nth-child(2)') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #summary
  summary <- var %>%
    html_nodes('.show-mobile') %>%
    html_text() %>%
    str_extract(".+")
  
  #link <- var %>%
  link <- paste0("https://www.careerbuilder.com/jobs?keywords=data+scientist")
  
  
  listings <- rbind(listings, as.data.frame(cbind(title,company,location,summary,link)))
}

listings

write.csv(listings, "scrape_jobs\\datascientist_careerbuilder.csv")
##############################################################################################################



##############################################################################################################
##2. Fetching Data for "program manager" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       stringsAsFactors=FALSE) 


for (i in seq(0, 50, 10)){
  url_ds <- paste0('https://www.careerbuilder.com/jobs?keywords=program+manager&page_number',i)
  
  
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#jobs_collection .b') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#jobs_collection span:nth-child(1)') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('span:nth-child(2)') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #summary
  summary <- var %>%
    html_nodes('.show-mobile') %>%
    html_text() %>%
    str_extract(".+")
  
  #link <- var %>%
  link <- paste0("https://www.careerbuilder.com/jobs?keywords=program+manager")
  
  
  listings <- rbind(listings, as.data.frame(cbind(title,company,location,summary,link)))
}

listings

write.csv(listings, "scrape_jobs\\programmanager_careerbuilder.csv")
##############################################################################################################





##############################################################################################################
##3. Fetching Data for "sde"  and storing to CSV




listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       stringsAsFactors=FALSE) 


for (i in seq(0, 50, 10)){
  url_ds <- paste0('https://www.careerbuilder.com/jobs?keywords=sde&page_number',i)
  
  
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#jobs_collection .b') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#jobs_collection span:nth-child(1)') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('span:nth-child(2)') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #summary
  summary <- var %>%
    html_nodes('.show-mobile') %>%
    html_text() %>%
    str_extract(".+")
  
  #link <- var %>%
  link <- paste0("https://www.careerbuilder.com/jobs?keywords=sde")
  
  
  listings <- rbind(listings, as.data.frame(cbind(title,company,location,summary,link)))
}

listings

write.csv(listings, "scrape_jobs\\sde_careerbuilder.csv")
##############################################################################################################








##############################################################################################################
##4. Fetching Data for "account manager" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       stringsAsFactors=FALSE) 


for (i in seq(0, 50, 10)){
  url_ds <- paste0('https://www.careerbuilder.com/jobs?keywords=account+manager&page_number',i)
  
  
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#jobs_collection .b') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#jobs_collection span:nth-child(1)') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('span:nth-child(2)') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #summary
  summary <- var %>%
    html_nodes('.show-mobile') %>%
    html_text() %>%
    str_extract(".+")
  
  #link <- var %>%
  link <- paste0("https://www.careerbuilder.com/jobs?keywords=account+manager")
  
  
  listings <- rbind(listings, as.data.frame(cbind(title,company,location,summary,link)))
}

listings

write.csv(listings, "scrape_jobs\\account+manager_careerbuilder.csv")
##############################################################################################################





##############################################################################################################
##5. Fetching Data for "marketing manager" and storing to CSV

listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       stringsAsFactors=FALSE) 


for (i in seq(0, 50, 10)){
  url_ds <- paste0('https://www.careerbuilder.com/jobs?keywords=marketing+manager&page_number',i)
  
  
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#jobs_collection .b') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#jobs_collection span:nth-child(1)') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('span:nth-child(2)') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #summary
  summary <- var %>%
    html_nodes('.show-mobile') %>%
    html_text() %>%
    str_extract(".+")
  
  #link <- var %>%
  link <- paste0("https://www.careerbuilder.com/jobs?keywords=marketing+manager")
  
  
  listings <- rbind(listings, as.data.frame(cbind(title,company,location,summary,link)))
}

listings

write.csv(listings, "scrape_jobs\\marketing+manager_careerbuilder.csv")

##############################################################################################################





##############################################################################################################
##6. Fetching Data for "cloud engineer" and storing to CSV


listings <- data.frame(title=character(),
                       company=character(), 
                       location=character(), 
                       summary=character(), 
                       link=character(), 
                       stringsAsFactors=FALSE) 


for (i in seq(0, 50, 10)){
  url_ds <- paste0('https://www.careerbuilder.com/jobs?keywords=cloud+engineer&page_number',i)
  
  
  var <- read_html(url_ds)
  
  #job title
  title <-  var %>% 
    html_nodes('#jobs_collection .b') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #company
  company <- var %>% 
    html_nodes('#jobs_collection span:nth-child(1)') %>%
    html_text() %>%
    str_extract("(\\w+).+") 
  
  #location
  location <- var %>%
    html_nodes('span:nth-child(2)') %>%
    html_text() %>%
    str_extract("(\\w+.+)+") 
  
  #summary
  summary <- var %>%
    html_nodes('.show-mobile') %>%
    html_text() %>%
    str_extract(".+")
  
  #link <- var %>%
  link <- paste0("https://www.careerbuilder.com/jobs?keywords=cloud+engineer")
  
  
  listings <- rbind(listings, as.data.frame(cbind(title,company,location,summary,link)))
}

listings

write.csv(listings, "scrape_jobs\\cloud+engineer_careerbuilder.csv")
##############################################################################################################
# END OF STAGE 2
##############################################################################################################








##############################################################################################################
#       STAGE 3 - MERGE INDEED+CAREERBUILDER csv OUTPUTS AND CLEAN THE DATA                                  #
##############################################################################################################

##############################################################################################################
#Merging all the 6 CSVs into one file, removing rows with null value in any column


merged_csv <- list.files(path="scrape_jobs\\", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows 
merged_csv <- na.omit(merged_csv) 
merged_csv <- subset(merged_csv, select= -X1)
write.csv(merged_csv, "scrape_jobs\\merged_csv.csv")
##############################################################################################################
# END OF STAGE 3
##############################################################################################################








