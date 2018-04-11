install.packages("tseries")
library(tseries)
#Trace Plot
plot(LakeHuron, ylab ="depth(in feet)",xlab = "Time(in years)")
#Four lag plot
lag.plot(LakeHuron,lags=3,do.lines = FALSE)
#Autocorrelation Plot
acf(LakeHuron)
ar(LakeHuron,method = "mle")

install.packages("forecast")
library(forecast)
#automatic model selection
auto.arima(x=LakeHuron)

# Time Series Forecast
LH.arima<-auto.arima(LakeHuron)
fcast<-forecast(LH.arima)
plot(fcast)


