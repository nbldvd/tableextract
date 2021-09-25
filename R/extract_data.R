#' @import tabulizer
#' @export

extract_data <- function(filename, pages){
  matrix = extract_areas(filename, pages = pages)[[1]]
  names <- c(matrix[1,])
  colnames(matrix) <- names
  matrix <- matrix[-1,]
  data = data.frame(matrix)
  return(data)
}
