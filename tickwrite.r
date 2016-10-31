library(IBrokers)
tws <- twsConnect() #Connect to TWS via IB Gateway
aapl.csv <- file("AAPL.csv", open = "w")

# run an infinite-loop ( <C-c> to break )
reqMktData(tws, twsSTK("AAPL"), 
           eventWrapper=eWrapper.MktData.CSV(1), 
           file=aapl.csv)

close(aapl.csv)
close(tws)