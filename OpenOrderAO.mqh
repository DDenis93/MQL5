void OpenOrderAO()
{
//bool history = HistorySelect(0,TimeCurrent());
//uint totalOrders = HistoryDealsTotal();
/*Print(totalOrders);
Print(ACCOUNT_LIMIT_ORDERS);
if(totalOrders < ACCOUNT_LIMIT_ORDERS)*/
   switch(OpenOrder)
   {
   case 0: Print("Go to kays NZD BAY");
           if(AO_ORDERS[0] == 0)                                        // если тикет ордера = 0 то
           {   MqlTradeRequest request={};                              // создаем массив 
               MqlTradeResult result={0};                               // создаем и обнуляем массив 2
               request.action = TRADE_ACTION_PENDING;                   // указываем тип запроса наверное
               request.symbol = "NZDUSDrfd";                            // указываем валюту ордера
               request.volume = lots;                                   // указываем объем ордера (сделать переменную)
               request.deviation = 2;                                   // что-то указываем
               request.type = ORDER_TYPE_BUY_STOP;                      // указываем тип ордера
               request.price = NormalizeDouble(Max_NZDUSD_BAY_AO,5);    // указываем цену открытия
               request.sl = NormalizeDouble(Min_NZDUSD_BAY_AO,5);       // указываем стоп лосс
               request.comment = "Робот открыл покупку";                // комментарий к ордеру
               if(!OrderSend(request,result))                           // если одер не открылся
                  PrintFormat("Ошибка открытия ордера %d", GetLastError());   // обрабатываем ошибку
               else                                                     // если ордер открылся
                  {AO_ORDERS[0] = result.order;                         // массив ордера заполняется тикетом
                  Print("Тикет открытого ордера - ",AO_ORDERS[0]);}          // выводится сообщение с тикетом ордера
           }break;
   case 1: Print("Go to kays NZD SELL");
           if(AO_ORDERS[1] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "NZDUSDrfd";
               request.volume = lots;
               request.deviation = 2;
               request.type = ORDER_TYPE_SELL_STOP;
               request.price = NormalizeDouble(Min_NZDUSD_SELL_AO,5);
               request.sl = NormalizeDouble(Max_NZDUSD_SELL_AO,5);
               request.comment = "Робот открыл продужу";
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Ошибка открытия ордера %d", GetLastError());
               else 
                  {AO_ORDERS[1] = result.order;
                  Print("Тикет открытого ордера - ",AO_ORDERS[1]);}
           }break;
   
   }

};