function getDayOfWeek(date) {
  const DAYS_OF_WEEK = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  return DAYS_OF_WEEK[date.getDay()];
}

let date = new Date('December 7, 1963');
console.log(getDayOfWeek(date)); //=> 'Saturday'
