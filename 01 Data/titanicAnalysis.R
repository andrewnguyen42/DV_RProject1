query1 = '"select * from titanic where 1 = 1"'
user = 'cs329e_atn657'
pass = 'orcl_atn657'

df <- data.frame(fromJSON(getURL(URLencode(paste('129.152.144.84:5001/rest/native/?query=',query1)),httpheader=c(DB='jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl', USER=paste('C##',user), PASS=pass, MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE), ))
