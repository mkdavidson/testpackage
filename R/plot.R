#' Plot ufo sightings by month
#'
#' @usage plotbymonth(state = "NV")
#' @param state what state it's in,
#'   Default is NV
#' @return Returns a plot.  See \link{ufo}
#' @importFrom magrittr %>%
#'
#' @export

plotbymonth = function(state = "NV"){

  testpackage::ufo %>%
    dplyr::filter(state == {{state}}) %>%
    ggplot2::ggplot(mapping = ggplot2::aes(x = lubridate::month(date))) +
    ggplot2::geom_histogram(bins = 12)

}
