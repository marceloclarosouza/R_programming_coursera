corr=function(directory, threshold = 0){
        path=paste0(getwd(),"/", directory)
        datacorr=NULL
        
        for (i in 1:332){
                if ( i < 10){
                        data = read.csv(paste(path, "/00", as.character(i), ".csv", sep = ""), as.is = T, header = T)
                }
                else if (i < 100){
                        data = read.csv(paste(path, "/0", as.character(i), ".csv", sep = ""), as.is = T, header = T)
                }
                else{
                        data= read.csv(paste(path, "/", as.character(i), ".csv", sep = ""), as.is = T, header = T)
                }
                dat=data[complete.cases(data),]
                if (nrow(dat) > threshold){
                        datacorr = c(datacorr, cor(dat[,"sulfate"], dat[,"nitrate"]))
                }
        }
        return(datacorr)
}