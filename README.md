rvisutils
=========

This package is currently still in its very early stages. It will become a collection of visualization functions that I've found useful over the years.

To install, you will need to have the devtools package on your system (if you don't have it, install that with install.packages("devtools")) and then run

``` r

devtools::install_github("smach/rvisutils.R")
```

To get a full listing of available functions and links to their help files, run

``` r

help(package="rvisutils")
```

Other favorite R data visualizations not packaged as functions here, because the existing functions are more than enough:

*Interactive HTML maps* -- [Leaflet for R](http://rstudio.github.io/leaflet/). There's more info on this in [my tutorial on useful new R packages](http://www.computerworld.com/article/2894448/useful-new-r-packages-for-data-visualization-and-analysis.html).

*Choropleth maps* -- [Leaflet for R](http://rstudio.github.io/leaflet/). Also check out out [Kyle Walker's tutorial](http://rpubs.com/walkerke/leaflet_choropleth), which includes reading in shape files and adding pop-ups.

*HTML time-series graphing* -- The [dygraphs package](http://rstudio.github.io/dygraphs/) is very easy to use. For converting data frames to xts objects, my rvisutils package's df\_to\_xts() function may be useful.

*HTML grouped bar chart* -- Check out the [rcdimple package](https://github.com/timelyportfolio/rcdimple). Here is sample code from @timelyportolio:

``` r
mydata %>%
+   dimple(
+     x = c("xAxisCategory","BarColor"), y = "value",
+     groups = "CarColor", type = "bar", width = 590, height = 400
+   ) %>%
+   add_legend( x = 60, y = 10, width = 520, height = 20,
+     horizontalAlign = "left"
+   ) %>%
+   default_colors( rainbow(4) )
```
