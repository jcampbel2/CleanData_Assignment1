run_analysis <- function(wd=".", od=".", of ="SummaryData.txt") {
      ##dd = data directory.  default is stays as is
      ##od = output directory, defaul is as-is
      
      origdir <- getwd()
      ##set data directory with optional parameter
      setwd(wd)
      
      ##read descriptions for activities
      act_lab <- read.table("activity_labels.txt")
      
      ##read column headings for metrics
      feat <- read.table("features.txt")
      col_lab <- as.character(feat[,2])
      
      ## remove "special characters from labels (),-
      col_lab <- gsub(pattern="\\)", x=col_lab, replacement="")
      col_lab <- gsub(pattern="\\(", x=col_lab, replacement="")
      col_lab <- gsub(pattern="\\,", x=col_lab, replacement=".")
      col_lab <- gsub(pattern="\\-", x=col_lab, replacement="_")
            
      
      ##create vector of column index which have word mean or srd in them
      col_subset <- sort(c(grep("mean",col_lab),grep("std",col_lab)))
            
      #load data
      
      ##test data
      sub_test <- read.table("subject_test.txt")
      res_test <- read.table("X_test.txt")
      act_test <- read.table("y_test.txt")
      
      ##train data
      sub_train <- read.table("subject_train.txt")
      res_train <- read.table("X_train.txt")
      act_train <- read.table("y_train.txt")
      

      
      ##merge sets
      sub_full <- rbind(sub_test,sub_train)
      act_full <- rbind(act_test, act_train)
      res_full <- rbind(res_test, res_train)
      
      
      ## append in activity labels
      act_full <- cbind(act_full,act_lab[act_full[,1],2])
      
      ##drop result columns not required
      res_full <- res_full[,col_subset]
      
      
      ##add meaningful column naems
      colnames(sub_full) <- "Subject_ID"
      colnames(act_full) <- c("Activity_ID", "Activity_Label")
      colnames(res_full) <- col_lab[col_subset]
      
      
      ##create summary activity set                                             )
      Summary_Setv2 <- aggregate(res_full, 
                                 by = list(SubjectID=sub_full$Subject_ID,ActivityLabel=act_full$Activity_Label), 
                                 mean)

      ##write tidy dataset to disk

      
      ##write.table()
      setwd(origdir)
      setwd(od)
      write.csv(Summary_Setv2,of)
      
      ##reset wd back to original
      setwd(origdir)
      
      ##return tidy data set
      Summary_Setv2

}
##end of function

