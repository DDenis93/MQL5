// CalendarValueHistory()
//ArrayPrint(values); - выводит массив новостей

void News()
{
   datetime date_from;
   datetime date_to;
   MqlCalendarValue values[];
   
   date_from = TimeCurrent(); // последнее время сервера
   Print(date_from);
   date_to = date_from + 345600; // до даты + секунд к времени сервера
   Print(date_to); // время сервера через 1 неделю
   
   if(CalendarValueHistory(values,date_from,date_to,"AU",NULL)>0)
      {uint News_AUD = values.Size();
       Print(News_AUD, " новостей в Австралии");}
   if(CalendarValueHistory(values,date_from,date_to,"GB",NULL)>0)
      {uint News_GBP = values.Size();
       Print(News_GBP," новостей в Великобритании");}
   if(CalendarValueHistory(values,date_from,date_to,"US",NULL)>0)
      {uint News_USD = values.Size();
       Print(News_USD," новостей в США");}
   if(CalendarValueHistory(values,date_from,date_to,"CH",NULL)>0)
      {uint News_CHF = values.Size();
       Print(News_CHF," новостей в Швейцария");} 
   if(CalendarValueHistory(values,date_from,date_to,"JP",NULL)>0)
      {uint News_JPY = values.Size();
       Print(News_JPY," новостей в Япония");} 
   if(CalendarValueHistory(values,date_from,date_to,"NZ",NULL)>0)
      {uint News_NZD = values.Size();
       Print(News_NZD," новостей в Новая Зеландия");} 
   if(CalendarValueHistory(values,date_from,date_to,"CA",NULL)>0)
      {uint News_CAD = values.Size();
       Print(News_CAD," новостей в Канада");}       
   
   MqlCalendarEvent events[];
   int events_count = CalendarEventByCountry("US",events);
   if(events_count>0)
      PrintFormat("События для США: %d",events_count);
   
   MqlCalendarEvent event;
   ulong event_id = events[events_count-35].id;
   uint event_top = events[events_count-35].importance;
   if(CalendarEventById(event_id,event))
   {
      MqlCalendarCountry country;
      CalendarCountryById(event.country_id,country);
      
      Print("--------------------------------");
      
      Print(events_count);
      Print(event_id);
      Print(event_top);
      Print(event.importance);
      Print(event.name);
      
      
      //PrintFormat("%d",event.importance);
   }
}
