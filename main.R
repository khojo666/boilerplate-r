tokens <- scan(file = "stdin", what = character(), quiet = TRUE)
token_index <- 1L
output_lines <- character()

HAS_TEST_CASES <- TRUE

next_token <- function() {
  if (token_index > length(tokens)) {
    stop("Unexpected end of input")
  }
  value <- tokens[[token_index]]
  token_index <<- token_index + 1L
  value
}

next_int <- function() as.integer(next_token())
next_num <- function() as.numeric(next_token())
next_str <- function() next_token()

write_line <- function(x) {
  output_lines <<- c(output_lines, as.character(x))
}

solve_case <- function(case_id) {
  invisible(case_id)
}

run <- function() {
  if (length(tokens) == 0L) {
    return(invisible(NULL))
  }

  total_cases <- if (HAS_TEST_CASES) next_int() else 1L
  for (case_id in seq_len(total_cases)) {
    solve_case(case_id)
  }

  if (length(output_lines) > 0L) {
    cat(paste(output_lines, collapse = "\n"))
  }

  invisible(NULL)
}

run()
