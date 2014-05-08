       var day = $(day_name + ' .weekday_name').val();
       var cal1 = $(day_name + ' .meal1').val();
       var cal2 = $(day_name + ' .meal2').val();
       var cal3 = $(day_name + ' .meal3').val();
       var cal4 = $(day_name + ' .meal4').val();
       var cal5 = $(day_name + ' .meal5').val();
       var cal6 = $(day_name + ' .meal6').val();
       var cal7 = $(day_name + ' .meal7').val();
       var cal8 = $(day_name + ' .meal8').val();
       var cal9 = $(day_name + ' .meal9').val();
       var cal10 = $(day_name + ' .meal10').val();


function day_dissector(day_name)


      var monday_updater = function() {

       var idle = $('#IDLE_BURN').val();
       var fast = $('#FASTING_FUELAGE').val();
       var lean = $('#LEAN_FUELAGE').val();

       var day = $('.weekday_name').val();
       var cal1 = $('.meal1').val();
       var cal2 = $('.meal2').val();
       var cal3 = $('.meal3').val();
       var cal4 = $('.meal4').val();
       var cal5 = $('.meal5').val();
       var cal6 = $('.meal6').val();
       var cal7 = $('.meal7').val();
       var cal8 = $('.meal8').val();
       var cal9 = $('.meal9').val();
       var cal10 = $('.meal10').val();

       console.log( $('.meal1').val());
       console.log( $('.weekday_name').val());

       $.ajax({url: '/my_week', type: 'POST', data: {"weekday_name": day, "meal1": cal1, "meal2": cal2, "meal3": cal3, "meal4": cal4, "meal5": cal5, "meal6": cal6, "meal7": cal7, "meal8": cal8, "meal9": cal9, "meal10": cal10 }});

       var daytotal = Number(cal1)+Number(cal2)+Number(cal3)+Number(cal4)+Number(cal5)+Number(cal6)+Number(cal7)+Number(cal8)+Number(cal9)+Number(cal10);

       $("#DayTotal").text(daytotal);
       $("#ExcessBurn").text(Number(idle)-Number(daytotal));
       $("#FastingExcess").text(Number(fast)-Number(daytotal));
       $("#LeanExcess").text(Number(lean)-Number(daytotal));
};
