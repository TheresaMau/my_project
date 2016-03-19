calcGDPcont <- function(dat, year=NULL, continent=NULL) 
{
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(continent)) {
    dat <- dat[dat$continent %in% continent, ]
  }
  gdp <- dat$pop * dat$gdpPercap
  new <- cbind(dat, gdp=gdp)
  return(new)
}

ggplot(data = gapminder, aes(x = continent, y = gdpPercap, by=lifeExp, color=continent)) +
  geom_point()