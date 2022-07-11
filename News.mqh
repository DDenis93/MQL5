// CalendarValueHistory()


void News()
{
   datetime date_from;
   datetime date_to;
   MqlCalendarValue values[];
   
   date_from = TimeCurrent(); // последнее время сервера
   Print(date_from);
   date_to = date_from + 605000; // до даты + секунд к времени сервера
   Print(date_to);
   
   if(CalendarValueHistory(values,date_from,date_to,"AU",NULL))
   {
      ArrayPrint(values);
      Print(values.Size(), " новостей в Австралии");
   }
   
   MqlCalendarEvent events[];
   int events_count = CalendarEventByCountry("AU",events);
   MqlCalendarEvent event;
   ulong event_id = events[events_count-1].id;
   if(CalendarEventById(event_id,event))
   {
      MqlCalendarCountry country;
      CalendarCountryById(event.country_id,country);
      PrintFormat("%d",event_id);
      PrintFormat("Важность события: %s", EnumToString((ENUM_CALENDAR_EVENT_IMPORTANCE)event.importance));
   }
}
