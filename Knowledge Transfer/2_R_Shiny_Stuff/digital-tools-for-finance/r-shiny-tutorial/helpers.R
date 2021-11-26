# helper functions

calculate_betas = function(df, freq, mkt_col) {
  # calculate betas for each column resampling the data as needed
  resamplers = list(monthly = apply.monthly, 
                    yearly = apply.yearly, 
                    daily = function(x, ...) x)
  r_freq = resamplers[[freq]](df, FUN = mean)

  
  # calculate betas
  b = list()
  for (s in names(r_freq)) {
    m = lm(subset(r_freq, select = s) ~ subset(r_freq, select = mkt_col))
    b[s] = m$coefficients[2]
  }
  
  return(unlist(b, use.names = TRUE))
  
}

mega_function = function(freq, mkt_col, nope){
  r <- get_stock_data(nope)
  b <- calculate_betas(r, freq, mkt_col)
  return(list(r, b))
}