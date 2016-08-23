# Function to generate dataset of 1000 observations of ages of various slabs 
# - 20s, 30s, 40s, 50s and 60s and store them.
#initialize(bkGenerateAgeDataset())
bkGenerateAgeDataset <- function(x) {
# create the directory if the datasets directory does not exist.
  setwd("/home/balg/R")
  my_path <- paste(getwd(),"/newDatasets",sep = "")
  print("Working directory -->")
  print(getwd())
  print("my_path -->")
  print(my_path)
  if (dir.exists(my_path) == FALSE)  {
    dir.create(path = my_path)
    print("newly created directory exists")
    print(my_path)
    }
# Generate the data 
my_age_data_twenties <- rnorm(n = 200,mean = 25,sd = 5)
my_age_data_thirties <- rnorm(n = 200,mean = 35,sd = 5)
my_age_data_fourties <- rnorm(n = 200,mean = 45,sd = 5)
my_age_data_fifties <- rnorm(n = 200,mean = 55,sd = 5)
my_age_data_sixties <- rnorm(n = 200,mean = 65,sd = 5)
my_age_data_master <- c(my_age_data_twenties,my_age_data_thirties,my_age_data_fourties,my_age_data_fifties,my_age_data_sixties)
my_age_data_master50 <- sample(x = my_age_data_master,50)

# create a local file and store the generated master data.
print("newDatasets directory exists already")
setwd(my_path)
file.create("myAgeDataMaster") 
write.csv(x = my_age_data_master,file = "myAgeDataMaster")
print("New datasets created in -->" ) 
print(getwd())
print("Data written successfully to myAgeDataMaster file")
# create a local file and store the generated sample data of 50 observations.
file.create("myAgeDataMasterSamp50")
write.csv(x = my_age_data_master50,file = "myAgeDataMasterSamp50")
print("Data written successfully to myAgeDataMasterSamp50 file")
print("Program executed successfully till the end")
setwd("/home/balg/R")
}
