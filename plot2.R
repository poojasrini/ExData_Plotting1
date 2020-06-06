
R version 3.6.3 (2020-02-29) -- "Holding the Windsock"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> data<-"household_power_consumption.txt"
>  
>  
>  
>  
> da<-read.table(data,header=TRUE,sep=";")
> dat<-subset(da,da$Date=="1/2/2007" | da$Date =="2/2/2007")
> datetime <- strptime(paste(dat$Date, dat$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
> png("plot2.png", width=480, height=480)
> plot(datetime, as.numeric(dat$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
> dev.off()
null device 
          1 
> 
