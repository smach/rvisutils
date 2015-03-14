#' Get US President by Date
#'
#' Get the name of US president on a given date starting with Harry Truman.
#'
#' Input a date object on or after 1945-04-12 and get the name of the US president who was in office at that time.
#' @param thedate Any date on or after 1945-04-12 as an R Date object.
#' @export
#' @examples
#' getpres(as.Date("2000-01-01"))

getpres <- function(thedate){
  thepres <- ""
  if(thedate >= as.Date("1945-04-12") & thedate < as.Date("1953-01-20")){
    thepres <- "Truman"}
  if(thedate > as.Date("1953-01-21") & thedate < as.Date("1961-01-20")){
    thepres <- "Eisenhower"
  }
  if (thedate > as.Date("1961-01-20") & thedate < as.Date("1963-11-22")) {
    thepres <- "Kennedy"}
  if (thedate > as.Date("1963-11-22") & thedate < as.Date("1969-01-20")) {
    thepres <- "Johnson"}
  if (thedate > as.Date("1969-01-20") & thedate < as.Date("1974-08-09")) {
    thepres <- "Nixon"}
  if (thedate > as.Date("1974-01-20") & thedate < as.Date("1977-01-20")) {
    thepres <- "Ford"}
  if (thedate > as.Date("1977-01-20") & thedate < as.Date("1981-01-20")) {
    thepres <- "Carter"}
  if (thedate > as.Date("1981-01-20") & thedate < as.Date("1989-01-20")) {
    thepres <- "Reagan"}
  if (thedate > as.Date("1989-01-20") & thedate < as.Date("1993-01-20")) {
    thepres <- "George HW Bush"}
  if (thedate > as.Date("1993-01-20") & thedate < as.Date("2001-01-20")) {
    thepres <- "Clinton"}
  if (thedate > as.Date("2001-01-01") & thedate < as.Date("2009-01-20")) {
    thepres <- "George W Bush"}
  if (thedate > as.Date("2009-01-01")) {
    thepres <- "Obama"}


  return(thepres)
} # end function


#' Get US President's Polical Party by Date
#'
#' Get the US president's on a given date starting with Harry Truman (D) on 1945-04-12.
#'
#' Input a date object on or after 1945-04-12 and get the name of the political party of the US president who was in office at that time.
#' @param thedate Any date on or after 1945-04-12 as an R Date object.
#' @export
#' @examples
#' getparty(as.Date("2000-01-01"))

getparty <- function(prez){
  party <- ""

  if(thedate >= as.Date("1945-04-12") & thedate < as.Date("1953-01-20")){
    party <- "Democrat"}
  if(thedate > as.Date("1953-01-21") & thedate < as.Date("1961-01-20")){
    party <- "Republican"
  }
  if (thedate > as.Date("1961-01-20") & thedate < as.Date("1963-11-22")) {
    party <- "Democrat"}
  if (thedate > as.Date("1963-11-22") & thedate < as.Date("1969-01-20")) {
    party <- "Democrat"}
  if (thedate > as.Date("1969-01-20") & thedate < as.Date("1974-08-09")) {
    party <- "Republican"}
  if (thedate > as.Date("1974-01-20") & thedate < as.Date("1977-01-20")) {
    party <- "Republican"}
  if (thedate > as.Date("1977-01-20") & thedate < as.Date("1981-01-20")) {
    party <- "Democrat"}
  if (thedate > as.Date("1981-01-20") & thedate < as.Date("1989-01-20")) {
    party <- "Republican"}
  if (thedate > as.Date("1989-01-20") & thedate < as.Date("1993-01-20")) {
    party <- "Republican"}
  if (thedate > as.Date("1993-01-20") & thedate < as.Date("2001-01-20")) {
    party <- "Democrat"}
  if (thedate > as.Date("2001-01-01") & thedate < as.Date("2009-01-20")) {
    party <- "Republican"}
  if (thedate > as.Date("2009-01-01")) {
    party <- "Democrat"}





  return(party)
}

