bool OpenOrderAO()
{
bool history = HistorySelect(0,TimeCurrent());
uint totalOrders = HistoryDealsTotal();
/*Print(totalOrders);
Print(ACCOUNT_LIMIT_ORDERS);
if(totalOrders < ACCOUNT_LIMIT_ORDERS)*/
   switch(OpenOrder)
   {
   case 1: Print("Go to kays EUR BAY");
           if(_AllOrders[1] == 0) // если тикет ордера отсутствует или равен нулю, то переходим к открытию ордера
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "EURUSDrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 1;
               request.type = ORDER_TYPE_BUY_STOP;
               request.price = NormalizeDouble(Max_EURUSD_BAY_AO,5);
               request.sl = NormalizeDouble(Min_EURUSD_BAY_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[1] = result.order; // записываем тикет открытого ордера в массив
                  Print("Ticket open order - ",_AllOrders[1]);}
           }break;
   case 2: Print("Go to kays EUR SELL");
           if(_AllOrders[2] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "EURUSDrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 2;
               request.type = ORDER_TYPE_SELL_STOP;
               request.price = NormalizeDouble(Min_EURUSD_SELL_AO,5);
               request.sl = NormalizeDouble(Max_EURUSD_SELL_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  {PrintFormat("Error Open Order %d", GetLastError());}
               else 
                  {_AllOrders[2] = result.order;
                  Print("Ticket open order - ",_AllOrders[2]);}
           }break; 
   case 3: Print("Go to kays GBP BAY");
           if(_AllOrders[3] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "GBPUSDrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.type = ORDER_TYPE_BUY_STOP;
               request.price = NormalizeDouble(Max_GBPUSD_BAY_AO,5);
               request.sl = NormalizeDouble(Min_GBPUSD_BAY_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[3] = result.order;
                  Print("Ticket open order - ",_AllOrders[3]);}
           }break;       
   case 4: Print("Go to kays GBP SELL");
           if(_AllOrders[4] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "GBPUSDrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 4;
               request.type = ORDER_TYPE_SELL_STOP;
               request.price = NormalizeDouble(Min_GBPUSD_SELL_AO,5);
               request.sl = NormalizeDouble(Max_GBPUSD_SELL_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[4] = result.order;
                  Print("Ticket open order - ",_AllOrders[4]);}
           }break;
   case 5: Print("Go to kays AUD BAY");
           if(_AllOrders[5] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "AUDUSDrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 5;
               request.type = ORDER_TYPE_BUY_STOP;
               request.price = NormalizeDouble(Max_AUDUSD_BAY_AO,5);
               request.sl = NormalizeDouble(Min_AUDUSD_BAY_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[5] = result.order;
                  Print("Ticket open order - ",_AllOrders[5]);}
           }break;
   case 6: Print("Go to kays AUD SELL");
           if(_AllOrders[6] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "AUDUSDrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 6;
               request.type = ORDER_TYPE_SELL_STOP;
               request.price = NormalizeDouble(Min_AUDUSD_SELL_AO,5);
               request.sl = NormalizeDouble(Max_AUDUSD_SELL_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[6] = result.order;
                  Print("Ticket open order - ",_AllOrders[6]);}
           }break;
   case 7: Print("Go to kays NZD BAY");
           if(_AllOrders[7] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "NZDUSDrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 7;
               request.type = ORDER_TYPE_BUY_STOP;
               request.price = NormalizeDouble(Max_NZDUSD_BAY_AO,5);
               request.sl = NormalizeDouble(Min_NZDUSD_BAY_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[7] = result.order;
                  Print("Ticket open order - ",_AllOrders[7]);}
           }break;
   case 8: Print("Go to kays NZD SELL");
           if(_AllOrders[8] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "NZDUSDrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 8;
               request.type = ORDER_TYPE_SELL_STOP;
               request.price = NormalizeDouble(Min_NZDUSD_SELL_AO,5);
               request.sl = NormalizeDouble(Max_NZDUSD_SELL_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[8] = result.order;
                  Print("Ticket open order - ",_AllOrders[8]);}
           }break;
   case 9: Print("Go to kays JPY BAY");
           if(_AllOrders[9] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "USDJPYrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 9;
               request.type = ORDER_TYPE_BUY_STOP;
               request.price = NormalizeDouble(Max_USDJPY_BAY_AO,5);
               request.sl = NormalizeDouble(Min_USDJPY_BAY_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[9] = result.order;
                  Print("Ticket open order - ",_AllOrders[9]);}
           }break;
   case 10:Print("Go to kays JPY SELL");
           if(_AllOrders[10] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "USDJPYrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 10;
               request.type = ORDER_TYPE_SELL_STOP;
               request.price = NormalizeDouble(Min_USDJPY_SELL_AO,5);
               request.sl = NormalizeDouble(Max_USDJPY_SELL_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[10] = result.order;
                  Print("Ticket open order - ",_AllOrders[10]);}
           }
           else
               Print("Copy order");break;
   case 11:Print("Go to kays CHF BAY");
           if(_AllOrders[11] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "USDCHFrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 11;
               request.type = ORDER_TYPE_BUY_STOP;
               request.price = NormalizeDouble(Max_USDCHF_BAY_AO,5);
               request.sl = NormalizeDouble(Min_USDCHF_BAY_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[11] = result.order;
                  Print("Ticket open order - ",_AllOrders[11]);}
           }break;        
   case 12:Print("Go to kays CHF SELL");
           if(_AllOrders[12] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "USDCHFrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 12;
               request.type = ORDER_TYPE_SELL_STOP;
               request.price = NormalizeDouble(Min_USDCHF_SELL_AO,5);
               request.sl = NormalizeDouble(Max_USDCHF_SELL_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[12] = result.order;
                  Print("Ticket open order - ",_AllOrders[12]);}
           }break; 
   case 13:Print("Go to kays CAD BAY");
           if(_AllOrders[13] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "USDCADrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 13;
               request.type = ORDER_TYPE_BUY_STOP;
               request.price = NormalizeDouble(Max_USDCAD_BAY_AO,5);
               request.sl = NormalizeDouble(Min_USDCAD_BAY_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[13] = result.order;
                  Print("Ticket open order - ",_AllOrders[13]);}
           }break;
   case 14:Print("Go to kays CAD SELL");
           if(_AllOrders[14] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "USDCADrfd";
               request.volume = 0.05;
               request.deviation = 2;
               request.magic  = 14;
               request.type = ORDER_TYPE_SELL_STOP;
               request.price = NormalizeDouble(Min_USDCAD_SELL_AO,5);
               request.sl = NormalizeDouble(Max_USDCAD_SELL_AO,5);
               Print("Price Open - ",request.price);
               if(!OrderSend(request,result))
                  PrintFormat("Error Open Order %d", GetLastError());
               else 
                  {_AllOrders[14] = result.order;
                  Print("Ticket open order - ",_AllOrders[14]);}
           }break;
   }
return(true);
};