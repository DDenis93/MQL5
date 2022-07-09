string News()
{
// получить список стран из Экономического календаря
MqlCalendarCountry countries[];
int count = CalendarCountries(countries);
// проверка результата
if(count==0)
   PrintFormat("Ошибка календаря: ",GetLastError());
// если более двух стран
if(count>=2){
   MqlCalendarCountry country;
   // получаем описание страны по ее идентификатору
   if(CalendarCountryById(countries[1].id, country)){
   // подготовим описание страны
   string descr="id = "+IntegerToString(country.id)+"\n";
   descr+=("Имя = "+country.name+"\n");
   descr+=("Код = " + country.code+"\n");
   descr+=("currency = " + country.currency+"\n");
   descr+=("currency_symbol = " + country.currency_symbol+"\n");
   descr+=("url_name = " + country.url_name);
   // выводим описание страны
   Print(descr);
   }
}

return("1"); // читай 1331 страницу
};