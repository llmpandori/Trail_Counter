###############################################################################
### Title: TrailMaster Data Visualization
### Purpose: Preliminary analyses of trail counter data
### Author: L. Pandori
### Date Created: 2/19/2020
### Last Edited: 2/19/2020
###############################################################################

##### set-up #####
# reminder to clear environment, clear console, and set wd if needed

# load required packages
library(tidyverse)
library(lubridate)
library(PNWColors)

# load data
# note: data have been visually QC'ed by LP in Winter 2020/21
# data are reliable from 2011 - 2020; low coverage for 2015

tmdata <- read_csv("D:/LP_Files/TrailMaster_Data/TrailMaster/tmdata_roughqc_feb21.csv", 
                   col_types = cols(hourlydrybulbtemperature = col_number(), 
                                    hourlywindspeed = col_number(), hourlyprecipitation = col_number()))

# tidy data 


##### data cleaning overview #####
# Data were collected by 2 TrailMaster IR trail cameras positioned at the entry to the coastal trail at lots 1 and 2. 
# Cameras were serviced approximately weekly, resulting in ~ 600 total files with 3.8 million 'events'. 
# Data were QC'ed using two methods (1) viewing a plot of visitation 'events' across hours at the park, rejecting any file with many observations outside of park hours, and (2) automated qc, where visitation events 30 minutes prior to sunrise or after sunset were discarded, along with any dates with incomplete data. 

##### data vis overview #####
# get summary statistics for visitation
  # visitors per year
  # percent data available for each year (exclude 2015 - low coverage)
  # visitors per month
  # is visitation increasing over time (linreg: is slope != 0)?
  # how much vistation before/after hrs & before/after sunset

# relationships between the following variables and visitation
  # 1) time: day of week, month, holiday, hrly increments 
  # 2) tides
  # 3) weather

##### summary stats for visitation ####

# visitors per year
