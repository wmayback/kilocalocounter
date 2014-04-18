 <script>
$(document).ready(function () {
      $('#Monday > tr').change(function() {

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

       var daytotal = Number(cal1)+Number(cal2)+Number(cal3)+Number(cal4)+Number(cal5)+Number(cal6)+Number(cal7)+Number(cal8)+Number(cal9)+Number(cal10)

       $("#DayTotal").text(daytotal);
       $("#ExcessBurn").text(Number(idle)-Number(daytotal));
       $("#FastingExcess").text(Number(fast)-Number(daytotal));
       $("#LeanExcess").text(Number(lean)-Number(daytotal));
      });

      $('#Tuesday > tr').change(function() {

       var idle = $('#IDLE_BURN').val();
       var fast = $('#FASTING_FUELAGE').val();
       var lean = $('#LEAN_FUELAGE').val();

       var day = $('#Tuesday .weekday_name').val();
       var cal1 = $('#Tuesday .meal1').val();
       var cal2 = $('#Tuesday .meal2').val();
       var cal3 = $('#Tuesday .meal3').val();
       var cal4 = $('#Tuesday .meal4').val();
       var cal5 = $('#Tuesday .meal5').val();
       var cal6 = $('#Tuesday .meal6').val();
       var cal7 = $('#Tuesday .meal7').val();
       var cal8 = $('#Tuesday .meal8').val();
       var cal9 = $('#Tuesday .meal9').val();
       var cal10 = $('#Tuesday .meal10').val();

       console.log( $('#Tuesday .meal1').val());
       console.log( $('#Tuesday .weekday_name').val());

       $.ajax({url: '/my_week', type: 'POST', data: {"weekday_name": day, "meal1": cal1, "meal2": cal2, "meal3": cal3, "meal4": cal4, "meal5": cal5, "meal6": cal6, "meal7": cal7, "meal8": cal8, "meal9": cal9, "meal10": cal10 }});

       var daytotal = Number(cal1)+Number(cal2)+Number(cal3)+Number(cal4)+Number(cal5)+Number(cal6)+Number(cal7)+Number(cal8)+Number(cal9)+Number(cal10)
       var previous_fasting_excess = $('#Monday #FastingExcess').text();
       var previous_lean_excess = $('#Monday #LeanExcess').text();

       $("#Tuesday #DayTotal").text(daytotal);
       $("#Tuesday #ExcessBurn").text(Number(idle)-Number(daytotal));
       $("#Tuesday #FastingExcess").text(Number(fast)+Number(previous_fasting_excess)-Number(daytotal));
       $("#Tuesday #LeanExcess").text(Number(lean)+Number(previous_lean_excess)-Number(daytotal));
      });

      $('#IDLE_BURN, #FASTING_FUELAGE, #LEAN_FUELAGE').change(function() {
       var idle = $('#IDLE_BURN').val();
       var fast = $('#FASTING_FUELAGE').val();
       var lean = $('#LEAN_FUELAGE').val();

       console.log( $('#IDLE_BURN').val());
       console.log( $('#FASTING_FUELAGE').val());
       console.log( $('#LEAN_FUELAGE').val());

       $.ajax({url: '/static_update', type: 'POST', data: {"IDLE_BURN": idle, "FASTING_FUELAGE": fast, "LEAN_FUELAGE": lean}});

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

       var daytotal = Number(cal1)+Number(cal2)+Number(cal3)+Number(cal4)+Number(cal5)+Number(cal6)+Number(cal7)+Number(cal8)+Number(cal9)+Number(cal10)

       $("#DayTotal").text(daytotal);
       $("#ExcessBurn").text(Number(idle)-Number(daytotal));
       $("#FastingExcess").text(Number(fast)-Number(daytotal));
       $("#LeanExcess").text(Number(lean)-Number(daytotal));

       console.log(Number(daytotal))

    });
    });
 </script>
