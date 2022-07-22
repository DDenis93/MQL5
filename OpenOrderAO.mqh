bool OpenOrderAO()
{
bool history = HistorySelect(0,TimeCurrent());
uint totalOrders = HistoryDealsTotal();
/*Print(totalOrders);
Print(ACCOUNT_LIMIT_ORDERS);
if(totalOrders < ACCOUNT_LIMIT_ORDERS)*/
   switch(OpenOrder)
   {
   case 7: Print("Go to kays NZD BAY");
           if(_AllOrders[7] == 0)
           {   MqlTradeRequest request={};
               MqlTradeResult result={0};
               request.action = TRADE_ACTION_PENDING;
               request.symbol = "NZDUSDrfd";
               request.volume = 0.01;
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
               request.volume = 0.01;
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
   
   }
return(true);
};