bool OpenOrderAO()
{
bool history = HistorySelect(0,TimeCurrent());
uint totalOrders = HistoryDealsTotal();
if(totalOrders < ACCOUNT_LIMIT_ORDERS)
   switch(OpenOrder)
   {
   case 1: {//Print("Go to kays EUR BAY");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 2: {Print("Go to kays EUR SELL");
   
           MqlTradeRequest request={};
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
               PrintFormat("Error Open Order %d", GetLastError());
           else 
               PrintFormat("ORDER OPEN!");
           
           } break; 
   case 3: {Print("Go to kays GBP BAY");
   
           MqlTradeRequest request={};
           MqlTradeResult result={0};
           request.action = TRADE_ACTION_PENDING;
           request.symbol = "GBPUSDrfd";
           request.volume = 0.05;
           request.deviation = 2;
           request.magic  = 3;
           request.type = ORDER_TYPE_BUY_STOP;
           request.price = NormalizeDouble(Max_GBPUSD_BAY_AO,5);
           request.sl = NormalizeDouble(Min_GBPUSD_BAY_AO,5);
           Print("Price Open - ",request.price);
           if(!OrderSend(request,result))
               PrintFormat("Error Open Order %d", GetLastError());
           else 
               PrintFormat("ORDER OPEN!");
           
           } break;        
   case 4: {Print("Go to kays GBP SELL");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 5: {Print("Go to kays AUD BAY");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 6: {Print("Go to kays AUD SELL");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 7: {Print("Go to kays NZD BAY");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 8: {Print("Go to kays NZD SELL");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 9: {Print("Go to kays JPY BAY");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 10: {Print("Go to kays JPY SELL");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 11: {Print("Go to kays CHF BAY");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;        
   case 12: {Print("Go to kays CHF SELL");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 13: {Print("Go to kays CAD BAY");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   case 14: {Print("Go to kays CAD SELL");
   
           MqlTradeRequest request={};
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
               PrintFormat("ORDER OPEN!");
           
           } break;
   }
return(true);
};