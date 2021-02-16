YEARS_DECADE = 10
DAYS_YEAR = 365
HOURS_DAY = 24
MINS_HOUR = 60
SECS_MIN = 60

hours_year = DAYS_YEAR * HOURS_DAY
print hours_year, " hours in a year\n"
min_decade = YEARS_DECADE * hours_year * MINS_HOUR
print min_decade, " minutes in a decade\n"
sec_year = hours_year * MINS_HOUR * SECS_MIN
age = 100
print "a ", age, "-year-old is approx ", age * sec_year, " seconds old\n"

age = 1_160_000_000 / sec_year
print "the author is approx ", age, " years old\n"
