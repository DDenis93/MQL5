double mAO_NZDUSDrfd[];
int hAO_NZDUSD;
string orderAO[14];



void AO()
{
// Блок NZDUSD
   if(_AllOrders[7] == 0)
   {
      hAO_NZDUSD = iAO("NZDUSDrfd",PERIOD());
      CopyBuffer(hAO_NZDUSD,0,0,6,mAO_NZDUSDrfd);
      ArraySetAsSeries(mAO_NZDUSDrfd,true);
      if(mAO_NZDUSDrfd[1] > mAO_NZDUSDrfd[2] &&
         mAO_NZDUSDrfd[2] > mAO_NZDUSDrfd[3] &&
         mAO_NZDUSDrfd[3] > mAO_NZDUSDrfd[4] &&
         mAO_NZDUSDrfd[4] < mAO_NZDUSDrfd[5])
         {Print("Go bay NZDUSD. 3 green");
         orderAO[6] = "Signal OK";
         AO_NZDUSD_BAY = true;}
   }
   if(_AllOrders[8] == 0)
   {
      hAO_NZDUSD = iAO("NZDUSDrfd",PERIOD());
      CopyBuffer(hAO_NZDUSD,0,0,6,mAO_NZDUSDrfd);
      ArraySetAsSeries(mAO_NZDUSDrfd,true);
      if(mAO_NZDUSDrfd[1] < mAO_NZDUSDrfd[2] &&
         mAO_NZDUSDrfd[2] < mAO_NZDUSDrfd[3] &&
         mAO_NZDUSDrfd[3] < mAO_NZDUSDrfd[4] &&
         mAO_NZDUSDrfd[4] > mAO_NZDUSDrfd[5])
         {Print("Go sell NZDUSD. 3 red");
         orderAO[7] = "Signal OK";
         AO_NZDUSD_SELL = true;}
   }   
for(int i=0;i<14;i++)
   {
      if(orderAO[i] == "Signal OK")
      {
         signalAO += 1;
      }
   }
Print("All signals: ", signalAO);
};