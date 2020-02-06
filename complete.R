complete = function(directory, id=1:322){
        path=paste0(getwd(),"/", directory)
        data_final=data.frame()
        for (i in id){
                if (i < 10){
                        dat=read.csv(paste(path, "/00", as.character(i), ".csv", sep = ""),
                        as.is = T,
                        header = T)
               
                }
                else if(i < 100){
                        dat=read.csv(paste(path, "/0", as.character(i), ".csv", sep =""),
                        as.is = T,
                        header = T)
                
                }
                else{
                        dat=read.csv(paste(path, "/", as.character(i), ".csv", sep = ""),
                        as.is = T,
                        header = T)
                
                }
                nobs=sum(complete.cases(dat))
                data_temp=data.frame(i, nobs)
                data_final=rbind(data_final,data_temp)
        }
        return(data_final)
}
        
