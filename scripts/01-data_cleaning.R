#### Preamble ####
# Purpose: Clean the survey data downloaded from 
# Author: Jiayi Wu
# Data: 2022-04-27
# Contact: sashuang.wu@mail.utoronto.ca
# License: MIT




#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/dataset_SLR.csv")


knitr::opts_chunk$set(echo = TRUE)



# data cleaning
data <- read.csv("dataset_SLR.csv")
data_cleaned <- data %>%
  filter(wdr_07<06 & sfc_07<06 & sfc_08<06 & jsr_02<6 & jsr_07<6 & jsr_08<6 & jsr_09<6 & jsr_10<6 & wdr_02<6 & wdr_06<6 & wdr_09<6 & wdr_10<6 & sfc_01<6 & tmg_01<6 & tmg_03<6) %>%
  rename("Job_Satisfaction"="jsr_02",
         "Belonging"="jsr_07",
         "Motivation_to_perform"="jsr_08",
         "Accomplishment"="jsr_09",
         "Doing_useful_work"="jsr_10",
         "Team_works"="wdr_02",
         "Colleagues_support"="wdr_06",
         "Fair_work_distribution"="wdr_09",
         "Decisions_influence"="wdr_10",
         "Friends_at_work"="sfc_01",
         "Conflicts_with_manager"="sfc_07",
         "Conflicts_with_colleagues"="sfc_08",
         "Impact_of_job_on_family"="tmg_01",
         "Job_life_balance"="tmg_03",
         "Manager_support"="wdr_07")



         