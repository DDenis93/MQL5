﻿int Connect()
{
   //Print("Брокер: ",AccountInfoString(ACCOUNT_COMPANY));
   //Print("Пользователь: ",AccountInfoString(ACCOUNT_NAME));
   //Print("Номер счета: ",AccountInfoInteger(ACCOUNT_LOGIN));
   //Print("Кредитное плечо: ",ACCOUNT_LEVERAGE);
   //Print("Максимальное количество отложенных ордеров ",ACCOUNT_LIMIT_ORDERS);
   Print("Баланс счета: ",AccountInfoDouble(ACCOUNT_BALANCE), " руб.");
   Print("Текущая прибыль: ",AccountInfoDouble(ACCOUNT_PROFIT), " руб.");
   Print("Собственные средства: ",AccountInfoDouble(ACCOUNT_EQUITY)," руб.");
   Print("Размер залога по сделкам: ",AccountInfoDouble(ACCOUNT_MARGIN)," руб.");
   Print("Средства доступные для открытия сделок: ",AccountInfoDouble(ACCOUNT_MARGIN_FREE)," руб.");
   
   //SendNotification("текст"); // PUSH уведомление на телефон
   
   // массив дней месяца 1...31
   int Day[32];
   for(int i=0;i<32;i++) {Day[i] = i;};
   
   // массив месяцев 1...12
   string Month[12];
   Month[0]  = "январь";
   Month[1]  = "февраль";
   Month[2]  = "март";
   Month[3]  = "апрель";
   Month[4]  = "май";
   Month[5]  = "июнь";
   Month[6]  = "июль";
   Month[7]  = "август";
   Month[8]  = "сентябрь";
   Month[9]  = "октябрь";
   Month[10] = "ноябрь";
   Month[11] = "декабрь";
   
   string DateAll = TimeToString(TimeCurrent());
   Print("Текущая дата ",DateAll);
   string DateMonth = DateAll.Substr(5,2);
   string DateDay = DateAll.Substr(8,2);
   Print(DateDay);
   
   // вывести текущий месяц
   if (DateMonth == "01") {DateMonth = Month[0];  Print(DateMonth);}
   if (DateMonth == "02") {DateMonth = Month[1];  Print(DateMonth);}
   if (DateMonth == "03") {DateMonth = Month[2];  Print(DateMonth);}
   if (DateMonth == "04") {DateMonth = Month[3];  Print(DateMonth);}
   if (DateMonth == "05") {DateMonth = Month[4];  Print(DateMonth);}
   if (DateMonth == "06") {DateMonth = Month[5];  Print(DateMonth);}
   if (DateMonth == "07") {DateMonth = Month[6];  Print(DateMonth);}
   if (DateMonth == "08") {DateMonth = Month[7];  Print(DateMonth);}
   if (DateMonth == "09") {DateMonth = Month[8];  Print(DateMonth);}
   if (DateMonth == "10") {DateMonth = Month[9];  Print(DateMonth);}
   if (DateMonth == "11") {DateMonth = Month[10]; Print(DateMonth);}
   if (DateMonth == "12") {DateMonth = Month[11]; Print(DateMonth);}
   
   Print("Сегодня ",DateMonth," ",DateDay," Хорошего времени!");
   Print(GetLastError());
   
return(0);
};
