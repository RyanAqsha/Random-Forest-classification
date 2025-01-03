# Load Dataset
employee_df <- read.csv('employee_churn.csv', header = TRUE, sep = ';')

View(employee_df)

# Information about Dataset
str(employee_df) # Menampilkan struktur pada data

# Preprocessing Data
sum(is.na(employee_df)) # Mengecek missing values pada data

# Mengkonversi nilai pada kolom education_level
employee_df$education_level[employee_df$education_level == 'high-school'] <- 1
employee_df$education_level[employee_df$education_level == 'bachelor/diploma'] <- 2
employee_df$education_level[employee_df$education_level == 'masters degree'] <- 3
employee_df$education_level[employee_df$education_level == 'higher education'] <- 4

employee_df$education_level <- as.integer(employee_df$education_level)

employee_df <- subset(employee_df, 
                      select = -c(company_latitude, company_longitude)) #  Drop Values

