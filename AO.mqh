double mAO_EURUSDrfd[];
double mAO_GBPUSDrfd[];
double mAO_AUDUSDrfd[];
double mAO_NZDUSDrfd[];
double mAO_USDJPYrfd[];
double mAO_USDCHFrfd[];
double mAO_USDCADrfd[];
int hAO_EURUSD;
int hAO_GBPUSD;
int hAO_AUDUSD;
int hAO_NZDUSD;
int hAO_USDJPY;
int hAO_USDCHF;
int hAO_USDCAD;
string orderAO[14];



void AO()
{
// Блок EURUSD
hAO_EURUSD = iAO("EURUSDrfd",PERIOD_D1);
CopyBuffer(hAO_EURUSD,0,0,6,mAO_EURUSDrfd);
ArraySetAsSeries(mAO_EURUSDrfd,true);
if(mAO_EURUSDrfd[1] > mAO_EURUSDrfd[2] &&
   mAO_EURUSDrfd[2] > mAO_EURUSDrfd[3] &&
   mAO_EURUSDrfd[3] > mAO_EURUSDrfd[4] &&
   mAO_EURUSDrfd[4] < mAO_EURUSDrfd[5])
   {Print("Пора покупать EURUSD. Третий зеленый");
   orderAO[0] = "Есть сигнал";
   AO_EURUSD_BAY = true;}

if(mAO_EURUSDrfd[1] < mAO_EURUSDrfd[2] &&
   mAO_EURUSDrfd[2] < mAO_EURUSDrfd[3] &&
   mAO_EURUSDrfd[3] < mAO_EURUSDrfd[4] &&
   mAO_EURUSDrfd[4] > mAO_EURUSDrfd[5])
   {Print("Пора продавать EURUSD. Третий красный");
   orderAO[1] = "Есть сигнал";
   AO_EURUSD_SELL = true;}

// Блок GBPUSD
hAO_GBPUSD = iAO("GBPUSDrfd",PERIOD_D1);
CopyBuffer(hAO_GBPUSD,0,0,6,mAO_GBPUSDrfd);
ArraySetAsSeries(mAO_GBPUSDrfd,true);
if(mAO_GBPUSDrfd[1] > mAO_GBPUSDrfd[2] &&
   mAO_GBPUSDrfd[2] > mAO_GBPUSDrfd[3] &&
   mAO_GBPUSDrfd[3] > mAO_GBPUSDrfd[4] &&
   mAO_GBPUSDrfd[4] < mAO_GBPUSDrfd[5])
   {Print("Пора покупать GBPUSD. Третий зеленый");
   orderAO[2] = "Есть сигнал";
   AO_GBPUSD_BAY = true;}

if(mAO_GBPUSDrfd[1] < mAO_GBPUSDrfd[2] &&
   mAO_GBPUSDrfd[2] < mAO_GBPUSDrfd[3] &&
   mAO_GBPUSDrfd[3] < mAO_GBPUSDrfd[4] &&
   mAO_GBPUSDrfd[4] > mAO_GBPUSDrfd[5])
   {Print("Пора продавать GBPUSD. Третий красный");
   orderAO[3] = "Есть сигнал";
   AO_GBPUSD_SELL = true;}
   
// Блок AUDUSD
hAO_AUDUSD = iAO("AUDUSDrfd",PERIOD_D1);
CopyBuffer(hAO_AUDUSD,0,0,6,mAO_AUDUSDrfd);
ArraySetAsSeries(mAO_AUDUSDrfd,true);
if(mAO_AUDUSDrfd[1] > mAO_AUDUSDrfd[2] &&
   mAO_AUDUSDrfd[2] > mAO_AUDUSDrfd[3] &&
   mAO_AUDUSDrfd[3] > mAO_AUDUSDrfd[4] &&
   mAO_AUDUSDrfd[4] < mAO_AUDUSDrfd[5])
   {Print("Пора покупать AUDUSD. Третий зеленый");
   orderAO[4] = "Есть сигнал";
   AO_AUDUSD_BAY = true;}

if(mAO_AUDUSDrfd[1] < mAO_AUDUSDrfd[2] &&
   mAO_AUDUSDrfd[2] < mAO_AUDUSDrfd[3] &&
   mAO_AUDUSDrfd[3] < mAO_AUDUSDrfd[4] &&
   mAO_AUDUSDrfd[4] > mAO_AUDUSDrfd[5])
   {Print("Пора продавать AUDUSD. Третий красный");
   orderAO[5] = "Есть сигнал";
   AO_AUDUSD_SELL = true;}
   
// Блок NZDUSD
hAO_NZDUSD = iAO("NZDUSDrfd",PERIOD_D1);
CopyBuffer(hAO_NZDUSD,0,0,6,mAO_NZDUSDrfd);
ArraySetAsSeries(mAO_NZDUSDrfd,true);
if(mAO_NZDUSDrfd[1] > mAO_NZDUSDrfd[2] &&
   mAO_NZDUSDrfd[2] > mAO_NZDUSDrfd[3] &&
   mAO_NZDUSDrfd[3] > mAO_NZDUSDrfd[4] &&
   mAO_NZDUSDrfd[4] < mAO_NZDUSDrfd[5])
   {Print("Пора покупать NZDUSD. Третий зеленый");
   orderAO[6] = "Есть сигнал";
   AO_NZDUSD_BAY = true;}

if(mAO_NZDUSDrfd[1] < mAO_NZDUSDrfd[2] &&
   mAO_NZDUSDrfd[2] < mAO_NZDUSDrfd[3] &&
   mAO_NZDUSDrfd[3] < mAO_NZDUSDrfd[4] &&
   mAO_NZDUSDrfd[4] > mAO_NZDUSDrfd[5])
   {Print("Пора продавать NZDUSD. Третий красный");
   orderAO[7] = "Есть сигнал";
   AO_NZDUSD_SELL = true;}
   
// Блок USDJPY
hAO_USDJPY = iAO("USDJPYrfd",PERIOD_D1);
CopyBuffer(hAO_USDJPY,0,0,6,mAO_USDJPYrfd);
ArraySetAsSeries(mAO_USDJPYrfd,true);
if(mAO_USDJPYrfd[1] > mAO_USDJPYrfd[2] &&
   mAO_USDJPYrfd[2] > mAO_USDJPYrfd[3] &&
   mAO_USDJPYrfd[3] > mAO_USDJPYrfd[4] &&
   mAO_USDJPYrfd[4] < mAO_USDJPYrfd[5])
   {Print("Пора покупать USDJPY. Третий зеленый");
   orderAO[8] = "Есть сигнал";
   AO_USDJPY_BAY = true;}

if(mAO_USDJPYrfd[1] < mAO_USDJPYrfd[2] &&
   mAO_USDJPYrfd[2] < mAO_USDJPYrfd[3] &&
   mAO_USDJPYrfd[3] < mAO_USDJPYrfd[4] &&
   mAO_USDJPYrfd[4] > mAO_USDJPYrfd[5])
   {Print("Пора продавать USDJPY. Третий красный");
   orderAO[9] = "Есть сигнал";
   AO_USDJPY_SELL = true;}
   
// Блок USDCHF
hAO_USDCHF = iAO("USDCHFrfd",PERIOD_D1);
CopyBuffer(hAO_USDCHF,0,0,6,mAO_USDCHFrfd);
ArraySetAsSeries(mAO_USDCHFrfd,true);
if(mAO_USDCHFrfd[1] > mAO_USDCHFrfd[2] &&
   mAO_USDCHFrfd[2] > mAO_USDCHFrfd[3] &&
   mAO_USDCHFrfd[3] > mAO_USDCHFrfd[4] &&
   mAO_USDCHFrfd[4] < mAO_USDCHFrfd[5])
   {Print("Пора покупать USDCHF. Третий зеленый");
   orderAO[10] = "Есть сигнал";
   AO_USDCHF_BAY = true;}

if(mAO_USDCHFrfd[1] < mAO_USDCHFrfd[2] &&
   mAO_USDCHFrfd[2] < mAO_USDCHFrfd[3] &&
   mAO_USDCHFrfd[3] < mAO_USDCHFrfd[4] &&
   mAO_USDCHFrfd[4] > mAO_USDCHFrfd[5])
   {Print("Пора продавать USDCHF. Третий красный");
   orderAO[11] = "Есть сигнал";
   AO_USDJPY_SELL = true;}
   
// Блок USDCAD
hAO_USDCAD = iAO("USDCADrfd",PERIOD_D1);
CopyBuffer(hAO_USDCAD,0,0,6,mAO_USDCADrfd);
ArraySetAsSeries(mAO_USDCADrfd,true);
if(mAO_USDCADrfd[1] > mAO_USDCADrfd[2] &&
   mAO_USDCADrfd[2] > mAO_USDCADrfd[3] &&
   mAO_USDCADrfd[3] > mAO_USDCADrfd[4] &&
   mAO_USDCADrfd[4] < mAO_USDCADrfd[5])
   {Print("Пора покупать USDCAD. Третий зеленый");
   orderAO[12] = "Есть сигнал";
   AO_USDCAD_BAY = true;}

if(mAO_USDCADrfd[1] < mAO_USDCADrfd[2] &&
   mAO_USDCADrfd[2] < mAO_USDCADrfd[3] &&
   mAO_USDCADrfd[3] < mAO_USDCADrfd[4] &&
   mAO_USDCADrfd[4] > mAO_USDCADrfd[5])
   {Print("Пора продавать USDCAD. Третий красный");
   orderAO[13] = "Есть сигнал";
   AO_USDCAD_SELL = true;}
   
for(int i=0;i<14;i++)
   {
      if(orderAO[i] == "Есть сигнал")
      {
         signalAO += 1;
      }
   }
Print("Всего сигналов: ", signalAO);
};