// set calendar base var
const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
const date = ['S', 'M', 'T','W','T','F','S'] ;
let num_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

// set today var
const today = new Date().toString().split(" ");
year = parseInt(today[3]);
const month = today[1];
const day = today[2];
const weekday = today[0];
if (year % 4 == 0 && year % 100 != 0){num_day[1] = num_day[1]+1;}
const decadeStart = year;
const decadeEnd = year+10;
const decade = decadeStart.toString() + '-' + decadeEnd.toString();
const centStart = year -49;
const centEnd = year+50;
const cent = centStart.toString() + '-' +  centEnd.toString();

// set calendar unit
const units = [day, month, year, decade, cent];
const unitsName = ['Today', 'This month', 'This year', 'Next decade', 'Next 100 years']
let unit = 2;

/*  
 *  set calendar var
 */
// today check flag
let todayYear = new Boolean();
let todayMonth = new Boolean();
let todayDay = new Boolean();
// css list
let cssToday = '';
let cssQuarter = '';
let cssFriday = '';
let cssFirstDay = '';

/* 
 * function set
 */
function delay(time) {return new Promise(resolve => setTimeout(resolve, time));}

function calendarMonth(passedYear, passedMonth, unitSize){
  todayYear = passedYear == 2022;
  todayMonth = months[passedMonth] == month;

  // get the weekday of day 1
  let d = new Date(passedYear + '-' + parseInt(passedMonth+1) + '-1');
  let calendarDate = d.getDay();

  let calendarMonth = ''
  
  calendarMonth +=`<div class="c1-${unitSize}-week">`
  if (unitSize =="m"){
    for (let i = 0; i < 7; i++){
      if (i ==6){cssFriday = "q-end";} else {cssFriday = ''};
      calendarMonth +=`
        <div class="c1-${unitSize}-day c1-m-date  ${cssFriday}">${date[i]}</div>`
    }
    calendarMonth +=`</div><div class="c1-${unitSize}-week">`
  }
  for (let calendarDay = 1; calendarDay <= num_day[passedMonth]; calendarDay++){
    // organize css
    todayDay = calendarDay == day;
    if (todayMonth && todayDay && todayYear){cssToday = `c1-day-today`;}else{cssToday='';}
    if (calendarDay ==1){cssFirstDay = `c1-${unitSize}-day-padding-`+calendarDate.toString();
      } else {cssFirstDay = ''}
    if (calendarDate ==6){cssFriday = "q-end";} else {cssFriday = ''};
    calendarMonth +=`
    <div class="c1-${unitSize}-day ${cssFirstDay} ${cssToday} ${cssFriday}">${calendarDay}</div>`;
    // check to prepare the next week
    if (calendarDate ==6) {
      calendarMonth +=`</div><div class="c1-${unitSize}-week">`;
      calendarDate = 0;
    } else {
      calendarDate +=1;
    }
  }
  calendarMonth +=`</div>`
  calendarMonth +=`</div>`;
  return calendarMonth;
}

function calendarYear(passedYear, unitSize){
  let calendar = ''
  // MONTH for loop
  for (let i = 0; i < 12; i++) {
    // check if it is the month
    todayMonth = months[i] == month;
    // check if it is quarter end
    // if (i+1%3 ==0) {cssQuarter = "q-end";} else{cssQuarter = ''}
    // month name
    let cssThisMonth = '';
    if (todayMonth){cssThisMonth = `onclick = "unitSmaller()"`}
    calendar +=`
      <div id="year-${passedYear}-month-${i}" class="c1-${unitSize}-month" ${cssThisMonth}>
      <div class="c1-${unitSize}-month-name">${months[i]}</div>`
    
    // DAY for loop
    calendar += calendarMonth(passedYear, i, unitSize);
  }
  return calendar;
}

function calendarDecade(unitSize){
  let calendar = ''
  for (let i = 0; i < 10; i++){
  // DAY for loop
  calendar += `<div id="year_${parseInt(year)+i}" class="c1-${unitSize}-year">
    <div class="c1-${unitSize}-year-name">${parseInt(year)+i}</div>`
  calendar += calendarYear(parseInt(year)+i, unitSize);
  calendar +=`</div>`;
  }
  return calendar;
}

function calendarCent(unitSize){
  let calendar = ''
  for (let i = 0; i < 100; i++){
  // DAY for loop
  calendar += `<div id="year_${parseInt(year)+i}" class="c1-${unitSize}-year">
    <div class="c1-${unitSize}-year-name">${parseInt(year)+i}</div>`
  calendar += calendarYear(parseInt(year)+i, unitSize);
  calendar +=`</div>`;
  }
  return calendar;
}

function addCalendar() {
  let calendar ='';
  let unitSize = ''
  let passedMonth = months.indexOf(month)
  let passedYear = year;
  if (unit == 0){ }
  else if (unit == 1){ 
    unitSize = 'm'; 
    calendar=calendarMonth(passedYear, passedMonth, unitSize);}
  else if (unit == 2){ 
    unitSize = 'y'; calendar=calendarYear(passedYear, unitSize);}
  else if (unit == 3){ 
    unitSize = 'd'; calendar=calendarDecade(unitSize);}
  else if (unit == 4){ 
    unitSize = 'c'; calendar=calendarCent(unitSize);}
  else {}
  document.getElementById("c1-calendar").innerHTML = `
  <div class="c1-${unitSize}-calendar anime-fadein">${calendar}</div>`;
}

function calendarToday(){
  let navi = '';
  if (unit==4){
    navi = `
    <div class="c1-unit float-left anime-fadein"> Next 100 years</div>`;
  } else{
    navi = `
    <span class="c1-unit float-left material-symbols-outlined">
            arrow_bacK </span> 
    <div class="c1-unit float-left anime-fadein"> ${units[unit]}</div>`;
  }
  document.getElementById('unit').innerHTML = navi;
  
  addCalendar();
}

function unitSmaller(){
    if (unit > 1) {unit -=1;}
    calendarToday();
}
function unitlarger(){
  if (unit < 4) {unit +=1;}
  calendarToday();
}
  
window.onload = calendarToday();



