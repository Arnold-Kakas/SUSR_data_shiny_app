box::use(
  httr[],
)


url  <-  "https://data.statistics.sk/api/v2/collection?lang=en"
get_slovak_statistics_data <- function(url = "https://data.statistics.sk/api/v2/collection?lang=en") {
  # Load required packages
  # If not installed, run: install.packages(c("httr", "jsonlite"))
  library(httr)
  library(jsonlite)
  
  # Make the GET request
  response <- GET(url)
  
  # Check the status code
  if (http_error(response)) {
    stop("Error fetching data: ", status_code(response), call. = FALSE)
  }
  
  # Validate that we received JSON
  if (http_type(response) != "application/json") {
    stop("The API did not return JSON. Type: ", http_type(response), call. = FALSE)
  }
  
  # Parse JSON content
  content_text <- content(response, as = "text", encoding = "UTF-8")
  data <- fromJSON(content_text, flatten = FALSE)
  data_href <- data$link$item$href
  data_labels <- data$link$item$label
  data_update <- data$link$item$update
  data_dimensions <- data$link$item$dimension |> unnest()
  data_dimensions <- data_dimensions |> 
    pivot_longer(everything(),
                 names_to = "dim",
                 values_to = "values") |> 
    drop_na() |> 
    mutate(dim = gsub("\\d+", "", dim)) |> 
    filter(dim != "href") |> 
    pivot_wider(values_from = "values",
                names_from = "dim")
  
  # Return the parsed data
  return(data)
}

get_slovak_statistics_data(
)







