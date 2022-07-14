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
           step = 1;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_EURUSD_BAY = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_EURUSD_BAY);}
           }break;
   case 2: Print("Go to kays EUR SELL");
           step = 2;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_EURUSD_SELL = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_EURUSD_SELL);}
           }break; 
   case 3: Print("Go to kays GBP BAY");
           step = 3;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_GBPUSD_BAY = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_GBPUSD_BAY);}
           }break;       
   case 4: Print("Go to kays GBP SELL");
           step = 4;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_GBPUSD_SELL = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_GBPUSD_SELL);}
           }break;
   case 5: Print("Go to kays AUD BAY");
           step = 5;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_AUDUSD_BAY = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_AUDUSD_BAY);}
           }break;
   case 6: Print("Go to kays AUD SELL");
           step = 6;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_AUDUSD_SELL = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_AUDUSD_SELL);}
           }break;
   case 7: Print("Go to kays NZD BAY");
           step = 7;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_NZDUSD_BAY = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_NZDUSD_BAY);}
           }break;
   case 8: Print("Go to kays NZD SELL");
           step = 8;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_NZDUSD_SELL = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_NZDUSD_SELL);}
           }break;
   case 9: Print("Go to kays JPY BAY");
           step = 9;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_USDJPY_BAY = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_USDJPY_BAY);}
           }break;
   case 10:Print("Go to kays JPY SELL");
           step = 10;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_USDJPY_SELL = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_USDJPY_SELL);}
           }
           else
               Print("Copy order");break;
   case 11:Print("Go to kays CHF BAY");
           step = 11;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_USDCHF_BAY = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_USDCHF_BAY);}
           }break;        
   case 12:Print("Go to kays CHF SELL");
           step = 12;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_USDCHF_SELL = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_USDCHF_SELL);}
           }break; 
   case 13:Print("Go to kays CAD BAY");
           step = 13;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_USDCAD_BAY = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_USDCAD_BAY);}
           }break;
   case 14:Print("Go to kays CAD SELL");
           step = 14;
           if(AllTradeOrders() == true)
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
                  {ticketTradeOrder_USDCAD_SELL = result.order;
                  Print("Ticket open order - ",ticketTradeOrder_USDCAD_SELL);}
           }break;
   }
return(true);
};