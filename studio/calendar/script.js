function add_text() {
  let year = 2022;
  const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  const date = ['S', 'M', 'T','W','T','F','S'] ;
  let num_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  const today = new Date().toString().split(" ");
  const today_weekday = today[0];
  const today_month = today[1];
  const today_day = today[2];
  const today_year = today[3];
  if (today_year % 4 == 0 && today_year % 100 != 0){
    num_day[1] = num_day[1]+1;
  }

  let calendar = '';
  calendar +=`
      <p class="c1-y-year">${today_year}</p>
    `;

  // month for loop
  for (let i = 0; i < months.length; i++) {
    let target_month = i+1;
    // get the weekday of day 1`
    var d = new Date(today_year,target_month,1);
    let target_date = d.getDay();

    let target_day= 1;
    //  chefk if it is today
    let css_today = '';
    if ( target_month == 7 && target_day == today_day){
      css_today = 'c1-y-day-today';
    }

    // check if it is q end
    let css_month_q = '';
    if (target_month %3 == 0){
      css_month_q = "q-end";
    } else {
      css_month_q = '';
    }

    calendar +=`
      <div id="month_${i}" class="c1-y-month ${css_month_q}">
      <div class="c1-y-month-name">${months[i]}</div>
        <div class="c1-y-week">`

    if (target_date ==6){
      calendar +=`
      <div class="c1-y-day c1-y-day-padding-${target_date} q-end ${css_today}">${target_day}</div>
      </div>
      <div class="c1-y-week">`
      target_date = 0;
    } else {
      calendar +=`
      <div class="c1-y-day c1-y-day-padding-${target_date} ${css_today}">${target_day}</div>`
      target_date +=1;
    }

    
    // day for loop
    for (target_day = 2; target_day <num_day[i]+1; target_day++){
       //  chefk if it is today
      let css_today = '';
      if (target_month == 7 && target_day == today_day){
        css_today = 'c1-y-day-today';
      }

      if (target_date == 6 && target_month % 3 == 0){
        calendar +=`
          <div class="c1-y-day q-end ${css_today}">${target_day}</div>
        </div>
        <div class="c1-y-week">`
        target_date = 0;
      }else if  (target_date == 6){
        calendar +=`
          <div class="c1-y-day ${css_today}">${target_day}</div>
        </div>
        <div class="c1-y-week">`
        target_date = 0;
      } else {
        calendar +=`
          <div class="c1-y-day ${css_today}">${target_day}</div>
        `
        target_date +=1;
      }
    }
    calendar +=`
        </div> 
      </div>
    `
  }

  calendar +=`</div>`

  let month_num = 31
  document.getElementById("c1").innerHTML = calendar;
}


  

window.onload = add_text;




