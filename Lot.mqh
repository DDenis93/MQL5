void Lot()
{
double risk=0.0;
switch(caseLotAO)
{
   case 0:
   {
   double priceNZD = iHigh("NZDUSDrfd",PERIOD(),0);
   double moneyNZD = NormalizeDouble((priceNZD/AccountInfoInteger(ACCOUNT_LEVERAGE)*1000),2);
   double priceRUBUSD = iHigh("USDRUBrfd",PERIOD(),0);
   double zalogRUB = NormalizeDouble(moneyNZD*priceRUBUSD,2);
   Print("Залог в рублях из лота - ",zalogRUB);
   
Print("-----------------------");
   
   //lots = NormalizeDouble((AccountInfoDouble(ACCOUNT_MARGIN_FREE)/(zalogRUB*110))/2,2); // получаем объем в лотах на текущую сделку
   Print(lots); // выводим полученное значение объема лота рассчитанное для текущей сделки

   //if(AO_SIGNAL[0] == true && AO_ORDERS[0] == 0)
   //{                                                                                            // если есть сигнал и нет тикета
   MqlTick tick_NZDUSD_BAY;                                                                     // создаем массив с параметрами тика
   SymbolInfoTick("NZDUSDrfd",tick_NZDUSD_BAY);                                                 // получаем информацию по валюте
   Max_NZDUSD_BAY_AO = NormalizeDouble(iHigh("NZDUSDrfd",PERIOD(),1)+(30*Point()),5);          // получаем максимум бара + спред
   Min_NZDUSD_BAY_AO = NormalizeDouble(iLow("NZDUSDrfd",PERIOD(),1)-(StopLoss*Point()),5);           // получаем минимум бара +- спред
   
   long pips = StringToInteger(DoubleToString((Max_NZDUSD_BAY_AO-Min_NZDUSD_BAY_AO)*100000));   // количество пунктов
   Print("Пункты - ",pips); 
   
   long spread = SymbolInfoInteger("NZDUSDrfd",SYMBOL_SPREAD);
   Print("Потенциальный убыток - ",NormalizeDouble((pips+spread)*((zalogRUB/1000)*(lots*100)),2));

   OpenOrder = 0;                                                                               // кейс ордера равен 0
   OpenOrderAO();      
   break;                                                                         // переходим к открытию ордера
   Print("-----------------------");
   } //}

   case 1:
   {
   double priceNZD = iHigh("NZDUSDrfd",PERIOD(),0);
   double moneyNZD = NormalizeDouble((priceNZD/AccountInfoInteger(ACCOUNT_LEVERAGE)*1000),2);
   double priceRUBUSD = iHigh("USDRUBrfd",PERIOD(),0);
   double zalogRUB = NormalizeDouble(moneyNZD*priceRUBUSD,2);
   Print("Залог в рублях из лота - ",zalogRUB);
   
Print("-----------------------");
   
   //lots = NormalizeDouble((AccountInfoDouble(ACCOUNT_MARGIN_FREE)/(zalogRUB*110))/2,2); // получаем объем в лотах на текущую сделку
   Print(lots); // выводим полученное значение объема лота рассчитанное для текущей сделки

   //if(AO_SIGNAL[0] == true && AO_ORDERS[0] == 0)
   //{                                                                                            // если есть сигнал и нет тикета
   MqlTick tick_NZDUSD_SELL;                                                                     // создаем массив с параметрами тика
   SymbolInfoTick("NZDUSDrfd",tick_NZDUSD_SELL);                                                 // получаем информацию по валюте
   Max_NZDUSD_SELL_AO = NormalizeDouble(iHigh("NZDUSDrfd",PERIOD(),1)+(StopLoss*Point()),5);          // получаем максимум бара + спред
   Min_NZDUSD_SELL_AO = NormalizeDouble(iLow("NZDUSDrfd",PERIOD(),1)-(30*Point()),5);           // получаем минимум бара +- спред
   
   long pips = StringToInteger(DoubleToString((Max_NZDUSD_SELL_AO-Min_NZDUSD_SELL_AO)*100000));   // количество пунктов
   Print("Пункты - ",pips); 
   
   long spread = SymbolInfoInteger("NZDUSDrfd",SYMBOL_SPREAD);
   Print("Потенциальный убыток - ",NormalizeDouble((pips+spread)*((zalogRUB/1000)*(lots*100)),2));

   OpenOrder = 1;                                                                               // кейс ордера равен 0
   OpenOrderAO();  
   break;                                                                             // переходим к открытию ордера
   Print("-----------------------");
   } //}

}








// Блок NZDUSD

   

   
signalAO = 0; // обнуление счетчика сигналов АО
Sleep(0);
};