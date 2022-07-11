//+------------------------------------------------------------------+
//| Подключенные файлы                                               |
//+------------------------------------------------------------------+

#include <Connect.mqh> // при подключении к графику
#include <News.mqh> // новости экономического календаря
#include <Errors.mqh> // список возможных ошибок программы
#include <ErrorsServer.mqh> // список возможных ошибок сервера
#include <AO.mqh> // индикатор
#include <Lot.mqh> // расчет лота

int signalAO = 0;
double balance;
double balanceFreeMargin;
int CreditPlecho;
bool AO_EURUSD_BAY;
bool AO_EURUSD_SELL;
bool AO_GBPUSD_BAY;
bool AO_GBPUSD_SELL;
bool AO_AUDUSD_BAY;
bool AO_AUDUSD_SELL;
bool AO_NZDUSD_BAY;
bool AO_NZDUSD_SELL;
bool AO_USDJPY_BAY;
bool AO_USDJPY_SELL;
bool AO_USDCHF_BAY;
bool AO_USDCHF_SELL;
bool AO_USDCAD_BAY;
bool AO_USDCAD_SELL;

//+------------------------------------------------------------------+
//| При включении советника                                          |
//+------------------------------------------------------------------+

int OnInit()
  {
   Connect();
   AO();
   Lot();
   return(INIT_SUCCEEDED);
  }
  
//+------------------------------------------------------------------+
//| При отключении советника                                         |
//+------------------------------------------------------------------+

void OnDeinit(const int reason)
  {
   
  }
  
//+------------------------------------------------------------------+
//| Работа каждый тик                                                |
//+------------------------------------------------------------------+

void OnTick()
  {

  }
  
//+------------------------------------------------------------------+
//| Функция                                                          |
//+------------------------------------------------------------------+

void OnTrade()
  {
     
  }
  
//+------------------------------------------------------------------+
//| TradeTransaction function                                        |
//+------------------------------------------------------------------+

void OnTradeTransaction(const MqlTradeTransaction& trans,
                        const MqlTradeRequest& request,
                        const MqlTradeResult& result)
  {
   
  }
  
//+------------------------------------------------------------------+