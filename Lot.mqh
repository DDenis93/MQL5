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

// Блок EURUSD
if(AO_EURUSD_BAY == true){
   MqlTick tick_EURUSD_BAY;
   SymbolInfoTick("EURUSDrfd",tick_EURUSD_BAY);
   //Print("Цена на покупку EURUSD ",tick_EURUSD_BAY.bid);
   Max_EURUSD_BAY_AO = iHigh("EURUSDrfd",PERIOD_H1,1);
   Min_EURUSD_BAY_AO = iLow("EURUSDrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_EURUSD_BAY_AO,Min_EURUSD_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_EURUSD_BAY_AO-Min_EURUSD_BAY_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_EURUSD_BAY = pips*risk;
   
   MqlTick tick_USDRUB_BAY;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_BAY);
   double margin_EURUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.bid;
   double comission_EURUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.ask - margin_EURUSD_BAY;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_EURUSD_BAY);
   //printf("Комиссия: %6.2f руб.",comission_EURUSD_BAY);
   double itog_EURUSD_BAY = comission_EURUSD_BAY+margin_EURUSD_BAY+
          money_Pips_EURUSD_BAY*(tick_USDRUB_BAY.bid);
   //printf("Необходимая сумма на покупку EURUSD: %7.2f",itog_EURUSD_BAY);
   OpenOrder = 1;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_EURUSD_BAY*(tick_USDRUB_BAY.bid));
   allitogmoney += itog_EURUSD_BAY;
   allrisk += money_Pips_EURUSD_BAY*(tick_USDRUB_BAY.bid);
   Print("-----------------------");
   }
   
if(AO_EURUSD_SELL == true){
   MqlTick tick_EURUSD_SELL;
   SymbolInfoTick("EURUSDrfd",tick_EURUSD_SELL);
   //Print("Цена на продажу EURUSD ",tick_EURUSD_SELL.ask);
   Max_EURUSD_SELL_AO = iHigh("EURUSDrfd",PERIOD_H1,1);
   Min_EURUSD_SELL_AO = iLow("EURUSDrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_EURUSD_SELL_AO,Min);
   long pips = StringToInteger(DoubleToString((Max_EURUSD_SELL_AO-Min_EURUSD_SELL_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_EURUSD_SELL = pips*risk;
   
   MqlTick tick_USDRUB_SELL;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_SELL);
   double margin_EURUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.bid;
   double comission_EURUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.ask - margin_EURUSD_SELL;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_EURUSD_SELL);
   //printf("Комиссия: %6.2f руб.",comission_EURUSD_SELL);
   double itog_EURUSD_SELL = comission_EURUSD_SELL+margin_EURUSD_SELL+
          money_Pips_EURUSD_SELL*(tick_USDRUB_SELL.bid);
   //printf("Необходимая сумма на продажу EURUSD: %7.2f",itog_EURUSD_SELL);
   OpenOrder = 2;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_EURUSD_SELL*(tick_USDRUB_SELL.bid));
   allitogmoney += itog_EURUSD_SELL;
   allrisk += money_Pips_EURUSD_SELL*(tick_USDRUB_SELL.bid);
   Print("-----------------------");
   }

// Блок GBPUSD
if(AO_GBPUSD_BAY == true){
   MqlTick tick_GBPUSD_BAY;
   SymbolInfoTick("GBPUSDrfd",tick_GBPUSD_BAY);
  //Print("Цена на покупку GBPUSD ",tick_GBPUSD_BAY.bid);
   Max_GBPUSD_BAY_AO = iHigh("GBPUSDrfd",PERIOD_H1,1);
   Min_GBPUSD_BAY_AO = iLow("GBPUSDrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_GBPUSD_BAY_AO,Min_GBPUSD_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_GBPUSD_BAY_AO-Min_GBPUSD_BAY_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_GBPUSD_BAY = pips*risk;
   
   MqlTick tick_USDRUB_BAY;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_BAY);
   double margin_GBPUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.bid;
   double comission_GBPUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.ask - margin_GBPUSD_BAY;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_GBPUSD_BAY);
   //printf("Комиссия: %6.2f руб.",comission_GBPUSD_BAY);
   double itog_GBPUSD_BAY = comission_GBPUSD_BAY+margin_GBPUSD_BAY+
          money_Pips_GBPUSD_BAY*(tick_USDRUB_BAY.bid);
   //printf("Необходимая сумма на покупку GBPUSD: %7.2f",itog_GBPUSD_BAY);
   OpenOrder = 3;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_GBPUSD_BAY*(tick_USDRUB_BAY.bid));
   allitogmoney += itog_GBPUSD_BAY;
   allrisk += money_Pips_GBPUSD_BAY*(tick_USDRUB_BAY.bid);
   Print("-----------------------");
   }
   
if(AO_GBPUSD_SELL == true){
   MqlTick tick_GBPUSD_SELL;
   SymbolInfoTick("GBPUSDrfd",tick_GBPUSD_SELL);
   //Print("Цена на продажу GBPUSD ",tick_GBPUSD_SELL.ask);
   Max_GBPUSD_SELL_AO = iHigh("GBPUSDrfd",PERIOD_H1,1);
   Min_GBPUSD_SELL_AO = iLow("GBPUSDrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_GBPUSD_SELL_AO,Min_GBPUSD_SELL_AO);
   long pips = StringToInteger(DoubleToString((Max_GBPUSD_SELL_AO-Min_GBPUSD_SELL_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_GBPUSD_SELL = pips*risk;
   
   MqlTick tick_USDRUB_SELL;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_SELL);
   double margin_GBPUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.bid;
   double comission_GBPUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.ask - margin_GBPUSD_SELL;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_GBPUSD_SELL);
   //printf("Комиссия: %6.2f руб.",comission_GBPUSD_SELL);
   double itog_GBPUSD_SELL = comission_GBPUSD_SELL+margin_GBPUSD_SELL+
          money_Pips_GBPUSD_SELL*(tick_USDRUB_SELL.bid);
   //printf("Необходимая сумма на продажу GBPUSD: %7.2f",itog_GBPUSD_SELL);
   OpenOrder = 4;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_GBPUSD_SELL*(tick_USDRUB_SELL.bid));
   allitogmoney += itog_GBPUSD_SELL;
   allrisk += money_Pips_GBPUSD_SELL*(tick_USDRUB_SELL.bid);
   Print("-----------------------");
   }
   
// Блок AUDUSD
if(AO_AUDUSD_BAY == true){
   MqlTick tick_AUDUSD_BAY;
   SymbolInfoTick("AUDUSDrfd",tick_AUDUSD_BAY);
   //Print("Цена на покупку AUDUSD ",tick_AUDUSD_BAY.bid);
   Max_AUDUSD_BAY_AO = iHigh("AUDUSDrfd",PERIOD_H1,1);
   Min_AUDUSD_BAY_AO = iLow("AUDUSDrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_AUDUSD_BAY_AO,Min_AUDUSD_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_AUDUSD_BAY_AO-Min_AUDUSD_BAY_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_AUDUSD_BAY = pips*risk;
   
   MqlTick tick_USDRUB_BAY;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_BAY);
   double margin_AUDUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.bid;
   double comission_AUDUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.ask - margin_AUDUSD_BAY;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_AUDUSD_BAY);
   //printf("Комиссия: %6.2f руб.",comission_AUDUSD_BAY);
   double itog_AUDUSD_BAY = comission_AUDUSD_BAY+margin_AUDUSD_BAY+
          money_Pips_AUDUSD_BAY*(tick_USDRUB_BAY.bid);
   //printf("Необходимая сумма на покупку AUDUSD: %7.2f",itog_AUDUSD_BAY);
   OpenOrder = 5;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_AUDUSD_BAY*(tick_USDRUB_BAY.bid));
   allitogmoney += itog_AUDUSD_BAY;
   allrisk += money_Pips_AUDUSD_BAY*(tick_USDRUB_BAY.bid);
   Print("-----------------------");
   }
   
if(AO_AUDUSD_SELL == true){
   MqlTick tick_AUDUSD_SELL;
   SymbolInfoTick("AUDUSDrfd",tick_AUDUSD_SELL);
   //Print("Цена на продажу AUDUSD ",tick_AUDUSD_SELL.ask);
   Max_AUDUSD_SELL_AO = iHigh("AUDUSDrfd",PERIOD_H1,1);
   Min_AUDUSD_SELL_AO = iLow("AUDUSDrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_AUDUSD_SELL_AO,Min_AUDUSD_SELL_AO);
   long pips = StringToInteger(DoubleToString((Max_AUDUSD_SELL_AO-Min_AUDUSD_SELL_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_AUDUSD_SELL = pips*risk;
   
   MqlTick tick_USDRUB_SELL;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_SELL);
   double margin_AUDUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.bid;
   double comission_AUDUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.ask - margin_AUDUSD_SELL;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_AUDUSD_SELL);
   //printf("Комиссия: %6.2f руб.",comission_AUDUSD_SELL);
   double itog_AUDUSD_SELL = comission_AUDUSD_SELL+margin_AUDUSD_SELL+
          money_Pips_AUDUSD_SELL*(tick_USDRUB_SELL.bid);
   //printf("Необходимая сумма на продажу AUDUSD: %7.2f",itog_AUDUSD_SELL);
   OpenOrder = 6;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_AUDUSD_SELL*(tick_USDRUB_SELL.bid));
   allitogmoney += itog_AUDUSD_SELL;
   allrisk += money_Pips_AUDUSD_SELL*(tick_USDRUB_SELL.bid);
   Print("-----------------------");
   }
   
// Блок NZDUSD
if(AO_NZDUSD_BAY == true){
   MqlTick tick_NZDUSD_BAY;
   SymbolInfoTick("NZDUSDrfd",tick_NZDUSD_BAY);
   //Print("Цена на покупку NZDUSD ",tick_NZDUSD_BAY.bid);
   Max_NZDUSD_BAY_AO = iHigh("NZDUSDrfd",PERIOD_H1,1);
   Min_NZDUSD_BAY_AO = iLow("NZDUSDrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_NZDUSD_BAY_AO,Min_NZDUSD_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_NZDUSD_BAY_AO-Min_NZDUSD_BAY_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_NZDUSD_BAY = pips*risk;
   
   MqlTick tick_USDRUB_BAY;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_BAY);
   double margin_NZDUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.bid;
   double comission_NZDUSD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.ask - margin_NZDUSD_BAY;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_NZDUSD_BAY);
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
   
if(AO_NZDUSD_SELL == true){
   MqlTick tick_NZDUSD_SELL;
   SymbolInfoTick("NZDUSDrfd",tick_NZDUSD_SELL);
   //Print("Цена на продажу NZDUSD ",tick_NZDUSD_SELL.ask);
   Max_NZDUSD_SELL_AO = iHigh("NZDUSDrfd",PERIOD_H1,1);
   Min_NZDUSD_SELL_AO = iLow("NZDUSDrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_NZDUSD_SELL_AO,Min_NZDUSD_SELL_AO);
   long pips = StringToInteger(DoubleToString((Max_NZDUSD_SELL_AO-Min_NZDUSD_SELL_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_NZDUSD_SELL = pips*risk;
   
   MqlTick tick_USDRUB_SELL;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_SELL);
   double margin_NZDUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.bid;
   double comission_NZDUSD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.ask - margin_NZDUSD_SELL;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_NZDUSD_SELL);
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
   
// Блок USDJPY
if(AO_USDJPY_BAY == true){
   MqlTick tick_USDJPY_BAY;
   SymbolInfoTick("USDJPYrfd",tick_USDJPY_BAY);
   //printf("Цена на покупку USDJPY ",tick_USDJPY_BAY.bid);
   Max_USDJPY_BAY_AO = iHigh("USDJPYrfd",PERIOD_H1,1);
   Min_USDJPY_BAY_AO = iLow("USDJPYrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_USDJPY_BAY_AO,Min_USDJPY_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_USDJPY_BAY_AO-Min_USDJPY_BAY_AO)*1000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_USDJPY_BAY = pips*risk;
   
   MqlTick tick_USDRUB_BAY;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_BAY);
   double margin_USDJPY_BAY = lots/CreditPlecho*tick_USDRUB_BAY.bid;
   double comission_USDJPY_BAY = lots/CreditPlecho*tick_USDRUB_BAY.ask - margin_USDJPY_BAY;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_USDJPY_BAY);
   //printf("Комиссия: %6.2f руб.",comission_USDJPY_BAY);
   double itog_USDJPY_BAY = comission_USDJPY_BAY+margin_USDJPY_BAY+
          money_Pips_USDJPY_BAY*(tick_USDRUB_BAY.bid);
   //printf("Необходимая сумма на покупку USDJPY: %7.2f",itog_USDJPY_BAY);
   OpenOrder = 9;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_USDJPY_BAY*(tick_USDRUB_BAY.bid));
   allitogmoney += itog_USDJPY_BAY;
   allrisk += money_Pips_USDJPY_BAY*(tick_USDRUB_BAY.bid);
   Print("-----------------------");
   }
   
if(AO_USDJPY_SELL == true){
   MqlTick tick_USDJPY_SELL;
   SymbolInfoTick("USDJPYrfd",tick_USDJPY_SELL);
   //double sjpy = tick_USDJPY_SELL.ask;
   //printf("Цена на продажу USDJPY %3.3f ",tick_USDJPY_SELL.ask);
   Max_USDJPY_SELL_AO = iHigh("USDJPYrfd",PERIOD_H1,1);
   Min_USDJPY_SELL_AO = iLow("USDJPYrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_USDJPY_SELL_AO,Min_USDJPY_SELL_AO);
   long pips = StringToInteger(DoubleToString((Max_USDJPY_SELL_AO-Min_USDJPY_SELL_AO)*1000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_USDJPY_SELL = pips*risk;
   
   MqlTick tick_USDRUB_SELL;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_SELL);
   double margin_USDJPY_SELL = lots/CreditPlecho*tick_USDRUB_SELL.bid;
   double comission_USDJPY_SELL = lots/CreditPlecho*tick_USDRUB_SELL.ask - margin_USDJPY_SELL;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_USDJPY_SELL);
   //printf("Комиссия: %6.2f руб.",comission_USDJPY_SELL);
   double itog_USDJPY_SELL = comission_USDJPY_SELL+margin_USDJPY_SELL+
          money_Pips_USDJPY_SELL*(tick_USDRUB_SELL.bid);
   //printf("Необходимая сумма на продажу USDJPY: %7.2f",itog_USDJPY_SELL);
   OpenOrder = 10;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_USDJPY_SELL*(tick_USDRUB_SELL.bid));
   allitogmoney += itog_USDJPY_SELL;
   allrisk += money_Pips_USDJPY_SELL*(tick_USDRUB_SELL.bid);
   Print("-----------------------");
   }
   
// Блок USDCHF
if(AO_USDCHF_BAY == true){
   MqlTick tick_USDCHF_BAY;
   SymbolInfoTick("USDCHFrfd",tick_USDCHF_BAY);
   //Print("Цена на покупку USDCHF ",tick_USDCHF_BAY.bid);
   Max_USDCHF_BAY_AO = iHigh("USDCHFrfd",PERIOD_H1,1);
   Min_USDCHF_BAY_AO = iLow("USDCHFrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_USDCHF_BAY_AO,Min_USDCHF_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_USDCHF_BAY_AO-Min_USDCHF_BAY_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_USDCHF_BAY = pips*risk;
   
   MqlTick tick_USDRUB_BAY;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_BAY);
   double margin_USDCHF_BAY = lots/CreditPlecho*tick_USDRUB_BAY.bid;
   double comission_USDCHF_BAY = lots/CreditPlecho*tick_USDRUB_BAY.ask - margin_USDCHF_BAY;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_USDCHF_BAY);
   //printf("Комиссия: %6.2f руб.",comission_USDCHF_BAY);
   double itog_USDCHF_BAY = comission_USDCHF_BAY+margin_USDCHF_BAY+
          money_Pips_USDCHF_BAY*(tick_USDRUB_BAY.bid);
   //printf("Необходимая сумма на покупку USDCHF: %7.2f",itog_USDCHF_BAY);
   OpenOrder = 11;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_USDCHF_BAY*(tick_USDRUB_BAY.bid));
   allitogmoney += itog_USDCHF_BAY;
   allrisk += money_Pips_USDCHF_BAY*(tick_USDRUB_BAY.bid);
   Print("-----------------------");
   }
   
if(AO_USDCHF_SELL == true){
   MqlTick tick_USDCHF_SELL;
   SymbolInfoTick("USDCHFrfd",tick_USDCHF_SELL);
   //Print("Цена на продажу USDCHF ",tick_USDCHF_SELL.ask);
   Max_USDCHF_SELL_AO = iHigh("USDCHFrfd",PERIOD_H1,1);
   Min_USDCHF_SELL_AO = iLow("USDCHFrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_USDCHF_SELL_AO,Min_USDCHF_SELL_AO);
   long pips = StringToInteger(DoubleToString((Max_USDCHF_SELL_AO-Min_USDCHF_SELL_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_USDCHF_SELL = pips*risk;
   
   MqlTick tick_USDRUB_SELL;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_SELL);
   double margin_USDCHF_SELL = lots/CreditPlecho*tick_USDRUB_SELL.bid;
   double comission_USDCHF_SELL = lots/CreditPlecho*tick_USDRUB_SELL.ask - margin_USDCHF_SELL;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_USDCHF_SELL);
   //printf("Комиссия: %6.2f руб.",comission_USDCHF_SELL);
   double itog_USDCHF_SELL = comission_USDCHF_SELL+margin_USDCHF_SELL+
          money_Pips_USDCHF_SELL*(tick_USDRUB_SELL.bid);
   //printf("Необходимая сумма на продажу USDCHF: %7.2f",itog_USDCHF_SELL);
   OpenOrder = 12;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_USDCHF_SELL*(tick_USDRUB_SELL.bid));
   allitogmoney += itog_USDCHF_SELL;
   allrisk += money_Pips_USDCHF_SELL*(tick_USDRUB_SELL.bid);
   Print("-----------------------");
   }
   
// Блок USDCAD
if(AO_USDCAD_BAY == true){
   MqlTick tick_USDCAD_BAY;
   SymbolInfoTick("USDCADrfd",tick_USDCAD_BAY);
   //Print("Цена на покупку USDCAD ",tick_USDCAD_BAY.bid);
   Max_USDCAD_BAY_AO = iHigh("USDCADrfd",PERIOD_H1,1);
   Min_USDCAD_BAY_AO = iLow("USDCADrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_USDCAD_BAY_AO,Min_USDCAD_BAY_AO);
   long pips = StringToInteger(DoubleToString((Max_USDCAD_BAY_AO-Min_USDCAD_BAY_AO)*100000));
   //Print("Разница = ", pips," пунктов");
   double money_Pips_USDCAD_BAY = pips*risk;
   
   MqlTick tick_USDRUB_BAY;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_BAY);
   double margin_USDCAD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.bid;
   double comission_USDCAD_BAY = lots/CreditPlecho*tick_USDRUB_BAY.ask - margin_USDCAD_BAY;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_USDCAD_BAY);
   //printf("Комиссия: %6.2f руб.",comission_USDCAD_BAY);
   double itog_USDCAD_BAY = comission_USDCAD_BAY+margin_USDCAD_BAY+
          money_Pips_USDCAD_BAY*(tick_USDRUB_BAY.bid);
   //printf("Необходимая сумма на покупку USDCAD: %7.2f",itog_USDCAD_BAY);
   OpenOrder = 13;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_USDCAD_BAY*(tick_USDRUB_BAY.bid));
   allitogmoney += itog_USDCAD_BAY;
   allrisk += money_Pips_USDCAD_BAY*(tick_USDRUB_BAY.bid);
   Print("-----------------------");
   }
   
if(AO_USDCAD_SELL == true){
   MqlTick tick_USDCAD_SELL;
   SymbolInfoTick("USDCADrfd",tick_USDCAD_SELL);
   //Print("Цена на продажу USDCAD ",tick_USDCAD_SELL.ask);
   Max_USDCAD_SELL_AO = iHigh("USDCADrfd",PERIOD_H1,1);
   Min_USDCAD_SELL_AO = iLow("USDCADrfd",PERIOD_H1,1);
   //printf("Максимум %1.5f Минимум %1.5f",Max_USDCAD_SELL_AO,Min_USDCAD_SELL_AO);
   long pips = StringToInteger(DoubleToString((Max_USDCAD_SELL_AO-Min_USDCAD_SELL_AO)*100000));
   //Print("Разница = ", mon," пунктов");
   double money_Pips_USDCAD_SELL = pips*risk;
   
   MqlTick tick_USDRUB_SELL;
   SymbolInfoTick("USDRUBrfd",tick_USDRUB_SELL);
   double margin_USDCAD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.bid;
   double comission_USDCAD_SELL = lots/CreditPlecho*tick_USDRUB_SELL.ask - margin_USDCAD_SELL;
   //printf("Залог на 0,01 лота = %7.2f руб.",margin_USDCAD_SELL);
   //printf("Комиссия: %6.2f руб.",comission_USDCAD_SELL);
   double itog_USDCAD_SELL = comission_USDCAD_SELL+margin_USDCAD_SELL+
          money_Pips_USDCAD_SELL*(tick_USDRUB_SELL.bid);
   //printf("Необходимая сумма на продажу USDCAD: %7.2f",itog_USDCAD_SELL);
   OpenOrder = 14;
   OpenOrderAO();
   //printf("Риск = %6.2f руб.", money_Pips_USDCAD_SELL*(tick_USDRUB_SELL.bid));
   allitogmoney += itog_USDCAD_SELL;
   allrisk += money_Pips_USDCAD_SELL*(tick_USDRUB_SELL.bid);
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
Sleep(60000);
/*
Print("Необходимая маржа для 0,01 лота по EURUSD = ");
Print("Необходимая маржа для 0,01 лота по GBPUSD = ");
Print("Необходимая маржа для 0,01 лота по AUDUSD = ");
Print("Необходимая маржа для 0,01 лота по NZDUSD = ");
Print("Необходимая маржа для 0,01 лота по USDJPY = ");
Print("Необходимая маржа для 0,01 лота по USDCHF = ");
Print("Необходимая маржа для 0,01 лота по USDCAD = ");*/
};