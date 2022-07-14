//+------------------------------------------------------------------+
//| Подключенные файлы                                               |
//+------------------------------------------------------------------+
#property version "1.0"                                              
//+------------------------------------------------------------------+
#include <Connect.mqh>         // при подключении к графику
#include <News.mqh>            // новости экономического календаря
#include <Errors.mqh>          // список возможных ошибок программы
#include <ErrorsServer.mqh>    // список возможных ошибок сервера
#include <AO.mqh>              // индикатор
#include <Lot.mqh>             // расчет лота
#include <WhatMoney.mqh>       // проверка наличия денег для открытия ордеров
#include <TestZeroDelenie.mqh> // проверка деления на 0
#include <openOrderAO.mqh>     // открываем ордера по сигналам АО
#include <AllTradeOrders.mqh>  // работа с уже открытыми ордерами

int signalAO = 0;              // количество сигналов AO
double balance;                // общий баланс счета
double balanceFreeMargin;      // свободная маржа
int CreditPlecho;              // кредитное плече счета

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

double allrisk;            // общий риск по сделкам
double allitogmoney;       // итоговая необходимая сумма
double q = 100000;         // объем базовой валюты

int OpenOrder = 0;         // переменная для swith из АО
double Max_EURUSD_BAY_AO;  // максимум для покупки по EURUSD
double Min_EURUSD_BAY_AO;  // минимум для покупки по EURUSD
double Max_EURUSD_SELL_AO; // максимум для продажи по EURUSD
double Min_EURUSD_SELL_AO; // минимум для продажи по EURUSD

double Max_GBPUSD_BAY_AO;
double Min_GBPUSD_BAY_AO;
double Max_GBPUSD_SELL_AO;
double Min_GBPUSD_SELL_AO;

double Max_AUDUSD_BAY_AO;
double Min_AUDUSD_BAY_AO;
double Max_AUDUSD_SELL_AO;
double Min_AUDUSD_SELL_AO;

double Max_NZDUSD_BAY_AO;
double Min_NZDUSD_BAY_AO;
double Max_NZDUSD_SELL_AO;
double Min_NZDUSD_SELL_AO;

double Max_USDJPY_BAY_AO;
double Min_USDJPY_BAY_AO;
double Max_USDJPY_SELL_AO;
double Min_USDJPY_SELL_AO;

double Max_USDCHF_BAY_AO;
double Min_USDCHF_BAY_AO;
double Max_USDCHF_SELL_AO;
double Min_USDCHF_SELL_AO;

double Max_USDCAD_BAY_AO;
double Min_USDCAD_BAY_AO;
double Max_USDCAD_SELL_AO;
double Min_USDCAD_SELL_AO;

ulong ticketTradeOrder_EURUSD_BAY  = 0;
ulong ticketTradeOrder_EURUSD_SELL = 0;
ulong ticketTradeOrder_GBPUSD_BAY  = 0;
ulong ticketTradeOrder_GBPUSD_SELL = 0;
ulong ticketTradeOrder_AUDUSD_BAY  = 0;
ulong ticketTradeOrder_AUDUSD_SELL = 0;
ulong ticketTradeOrder_NZDUSD_BAY  = 0;
ulong ticketTradeOrder_NZDUSD_SELL = 0;
ulong ticketTradeOrder_USDJPY_BAY  = 0;
ulong ticketTradeOrder_USDJPY_SELL = 0;
ulong ticketTradeOrder_USDCHF_BAY  = 0;
ulong ticketTradeOrder_USDCHF_SELL = 0;
ulong ticketTradeOrder_USDCAD_BAY  = 0;
ulong ticketTradeOrder_USDCAD_SELL = 0;
int step = 0;
//+------------------------------------------------------------------+
//| При включении советника                                          |
//+------------------------------------------------------------------+

int OnInit()
  {
   Connect();
   AO();
   Lot();
   WhatMoney();
   OpenOrderAO();
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
   AllTradeOrders();
   AO();
   Lot();
   WhatMoney();
   OpenOrderAO();
  }
  
//+------------------------------------------------------------------+
//| Функция открытия ордеров                                         |
//+------------------------------------------------------------------+

void OnTrade()
  {
     
  }
  
//+------------------------------------------------------------------+
//| Результат обработки ордера сервером                              |
//+------------------------------------------------------------------+

void OnTradeTransaction(const MqlTradeTransaction& trans,
                        const MqlTradeRequest& request,
                        const MqlTradeResult& result)
  {
   
  }
  
//+------------------------------------------------------------------+