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

These can be saved to static images.

**Complex static charts** -- ggplot2. There are lots of examples in the [ggplot2 documentation](http://docs.ggplot2.org/current/). Also see the [R Graphics Cookbook](http://www.cookbook-r.com/Graphs/index.html) , the [R Graph Catalog](http://shinyapps.stat.ubc.ca/r-graph-catalog/). For info on tweaking graphs beyond the type, check [this cheat sheet](http://zevross.com/blog/2014/08/04/beautiful-plotting-in-r-a-ggplot2-cheatsheet-3/).

Here's a sample grouped bar chart:

``` r
library(gcookbook)
library(ggplot2)
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +
  geom_bar(stat = "identity", position="dodge") +
  ggtitle("My title") +
  theme_minimal() +
  # Adds labels on bars in white:
  geom_text(aes(label=Weight), vjust=1.5, colour="white",
  position=position_dodge(.9), size=3)
```

![](README-unnamed-chunk-5-1.png)

**Publish interactive versions of ggplot2 visualization on the Web** -- [plotly](https://plot.ly/ggplot2/).

**Interactive HTML maps with points** -- [Leaflet for R](http://rstudio.github.io/leaflet/). There's more info on this in [my tutorial on useful new R packages](http://www.computerworld.com/article/2894448/useful-new-r-packages-for-data-visualization-and-analysis.html).

**Interactive HTML choropleth maps** -- [Leaflet for R](http://rstudio.github.io/leaflet/). Also check out out [Kyle Walker's tutorial](http://rpubs.com/walkerke/leaflet_choropleth), which includes reading in shape files and adding pop-ups.

**Static choropleth map of US states/counties or world where proper projection is important** -- maps package with ggplot2 qplot. Example of US counties:

``` r
library(maps)
library(ggplot2)
counties <- map_data("county")
qplot(long, lat, data = counties, geom="polygon",
      group = group, fill = group) +
  coord_map() # keeps proper aspect ratio
```

![](README-unnamed-chunk-6-1.png)

**Exploratory static choropleth maps if projection isn't important** -- [choroplethr](https://github.com/trulia/choroplethr)

**HTML time-series graphing** -- The [dygraphs package](http://rstudio.github.io/dygraphs/) is very easy to use. For converting data frames to xts objects, my rvisutils package's df\_to\_xts() function may be useful.
