void WhatMoney()
{
switch (caseWhatMoney)     // переходим в кейс в зависимости от наличия ордеров
{
   case 0: // ордера отсутствуют
   { // вычисляем текущий минимальный залог
   double priceNZD = iHigh("NZDUSDrfd",PERIOD_M5,0);
   double moneyNZD = NormalizeDouble((priceNZD/AccountInfoInteger(ACCOUNT_LEVERAGE)*1000),2);
   double priceRUBUSD = iHigh("USDRUBrfd",PERIOD_M5,0);
   double zalogRUB = NormalizeDouble(moneyNZD*priceRUBUSD,2);
   Print("Залог в рублях - ",zalogRUB);
   
   if(balanceFreeMargin>zalogRUB) // если свободная маржа больше минимального залога
      {
      Print("Средств хватает");
      AO();                       // переходим в анализ графика
      }
   else
      {
      Print("Свободные средства отсутствуют");
      }
   
   }
   
   case 1:     // есть ордера
   { // вычисляем текущий минимальный залог
   double priceNZD = iHigh("NZDUSDrfd",PERIOD_M5,0);
   double moneyNZD = NormalizeDouble((priceNZD/AccountInfoInteger(ACCOUNT_LEVERAGE)*1000),2);
   double priceRUBUSD = iHigh("USDRUBrfd",PERIOD_M5,0);
   double zalogRUB = NormalizeDouble(moneyNZD*priceRUBUSD,2);
   Print("Залог в рублях - ",zalogRUB);
   
   if(balanceFreeMargin>zalogRUB) // если свободная маржа больше минимального залога
      {
      Print("Средств хватает");
      AO();                       // переходим в анализ графика
      }
   else
      {
      Print("Свободные средства отсутствуют");
      }
   
   }
}





bool o;
if(balanceFreeMargin>900) // если свободных денег хватает на 0,01 лот
   o = true;
else
   o = false;

};