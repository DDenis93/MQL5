void Lot()
{
/*
if(signalAO>0)
   {Print("Расчитываем объем на ", signalAO, " ордеров");}
Print("Свободные для торговли средства: ",balanceFreeMargin);
Print("-----------------------");
*/
int lotss[12];

lotss[1] = 1000;//0.01
lotss[2] = 2000;//0.01
lotss[3] = 3000;//0.01
lotss[4] = 4000;//0.01
lotss[5] = 5000;//0.01
lotss[6] = 6000;//0.01
lotss[7] = 7000;//0.01
lotss[8] = 8000;//0.01
lotss[9] = 9000;//0.01
lotss[10] = 10000;//0.01
lotss[11] = 11000;//0.01

//----------------------
int lots = lotss[1];
//----------------------


double risk=0.0;
if(TestZeroDelenie()==true)
   {risk = lots/q;};

// Блок NZDUSD
if(AO_NZDUSD_BAY == true && _AllOrders[7] == 0){
   MqlTick tick_NZDUSD_BAY;
   SymbolInfoTick("NZDUSDrfd",tick_NZDUSD_BAY);
   //Print("Цена на покупку NZDUSD ",tick_NZDUSD_BAY.bid);
   Max_NZDUSD_BAY_AO = iHigh("NZDUSDrfd",PERIOD(),1);
   Min_NZDUSD_BAY_AO = iLow("NZDUSDrfd",PERIOD(),1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_NZDUSD_BAY_AO,Min_NZDUSD_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_NZDUSD_BAY_AO-Min_NZDUSD_BAY_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_NZDUSD_BAY = pips*risk;
   
   MqlTick tick_USDRUB_BAY;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_BAY);
   double margin_NZDUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.bid;
   double comission_NZDUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.ask - margin_NZDUSD_BAY;
   printf("Залог на 0,01 лота = %7.2f руб.",margin_NZDUSD_BAY);
   //printf("Комиссия: %6.2f руб.",comission_NZDUSD_BAY);
   double itog_NZDUSD_BAY = comission_NZDUSD_BAY+margin_NZDUSD_BAY+
          money_Pips_NZDUSD_BAY*(tick_USDRUB_BAY.bid);
   //printf("Необходимая сумма на покупку NZDUSD: %7.2f",itog_NZDUSD_BAY);
   OpenOrder = 7;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_NZDUSD_BAY*(tick_USDRUB_BAY.bid));
   allitogmoney += itog_NZDUSD_BAY;
   allrisk += money_Pips_NZDUSD_BAY*(tick_USDRUB_BAY.bid);
   Print("-----------------------");
   }
   
if(AO_NZDUSD_SELL == true && _AllOrders[8] == 0){
   MqlTick tick_NZDUSD_SELL;
   SymbolInfoTick("NZDUSDrfd",tick_NZDUSD_SELL);
   //Print("Цена на продажу NZDUSD ",tick_NZDUSD_SELL.ask);
   Max_NZDUSD_SELL_AO = iHigh("NZDUSDrfd",PERIOD(),1);
   Min_NZDUSD_SELL_AO = iLow("NZDUSDrfd",PERIOD(),1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_NZDUSD_SELL_AO,Min_NZDUSD_SELL_AO);
   long pips = StringToInteger(DoubleToString((Max_NZDUSD_SELL_AO-Min_NZDUSD_SELL_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_NZDUSD_SELL = pips*risk;
   
   MqlTick tick_USDRUB_SELL;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_SELL);
   double margin_NZDUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.bid;
   double comission_NZDUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.ask - margin_NZDUSD_SELL;
   printf("Залог на 0,01 лота = %7.2f руб.",margin_NZDUSD_SELL);
   //printf("Комиссия: %6.2f руб.",comission_NZDUSD_SELL);
   double itog_NZDUSD_SELL = comission_NZDUSD_SELL+margin_NZDUSD_SELL+
          money_Pips_NZDUSD_SELL*(tick_USDRUB_SELL.bid);
   //printf("Необходимая сумма на продажу NZDUSD: %7.2f",itog_NZDUSD_SELL);
   OpenOrder = 8;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_NZDUSD_SELL*(tick_USDRUB_SELL.bid));
   allitogmoney += itog_NZDUSD_SELL;
   allrisk += money_Pips_NZDUSD_SELL*(tick_USDRUB_SELL.bid);
   Print("-----------------------");
   }
   
/*
if(allrisk>0)
{
   //printf("Общий риск = %6.2f руб.", allrisk);
   //printf("Минимум на счету = %6.2f",allitogmoney+allitogmoney/100*10);
   if(WhatMoney() == true)
      Print("Открываем ордера");
   else
      Print("Недостаточно средств");
}*/
signalAO = 0; // обнуление счетчика сигналов АО
Sleep(0);
/*
Print("Необходимая маржа для 0,01 лота по NZDUSD = ");*/
};