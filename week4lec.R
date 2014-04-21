 homicides <- readLines("homicides.txt")
homicides[1:5]

length(grep("Cause: [Ss]hooting", homicides))
grep("^New", state.name)
grep("^New", state.name, value = TRUE)
regexpr("<dd>[Ff]ound(.*)</dd>", homicides[1:10])

##use lazy not too greedy
regexpr("<dd>[F|f]ound(.*?)</dd>", homicides[1:10])

##delete useleff info.leave only date
r <- regexpr("<dd>[F|f]ound(.*?)</dd>", homicides[1:5])
m <- regmatches(homicides[1:5], r)
 m
 gsub("<dd>[F|f]ound on |</dd>", "", m)
as.Date(d, "%B %d, %Y")
r <- regexec("<dd>[F|f]ound on (.*?)</dd>", homicides[1:2])
 regmatches(homicides[1:2], r)

##count and plot
r <- regexec("<dd>[F|f]ound on (.*?)</dd>", homicides)
m <- regmatches(homicides, r)
 dates <- sapply(m, function(x) x[2])
 dates <- as.Date(dates, "%B %d, %Y")
 hist(dates, "month", freq = TRUE)
