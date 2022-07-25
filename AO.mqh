double mAO_NZDUSDrfd[];
int hAO_NZDUSD;

void AO()
{         
   if(AO_ORDERS[0] == 0)
   {
      hAO_NZDUSD = iAO("NZDUSDrfd",PERIOD());
      CopyBuffer(hAO_NZDUSD,0,0,6,mAO_NZDUSDrfd);
      ArraySetAsSeries(mAO_NZDUSDrfd,true);
      if(mAO_NZDUSDrfd[1] > mAO_NZDUSDrfd[2] &&
         mAO_NZDUSDrfd[2] > mAO_NZDUSDrfd[3] &&
         mAO_NZDUSDrfd[3] > mAO_NZDUSDrfd[4] &&
         mAO_NZDUSDrfd[4] < mAO_NZDUSDrfd[5] &&
         (iHigh("NZDUSDrfd",PERIOD(),0) < iHigh("NZDUSDrfd",PERIOD(),1)))
         {
         Print("5 минут покупка");
         AO_SIGNAL[0] = true;
         caseLotAO = 0;
         Lot();
         }
   }
   if(AO_ORDERS[1] == 0)
   {
      hAO_NZDUSD = iAO("NZDUSDrfd",PERIOD());
      CopyBuffer(hAO_NZDUSD,0,0,6,mAO_NZDUSDrfd);
      ArraySetAsSeries(mAO_NZDUSDrfd,true);
      if(mAO_NZDUSDrfd[1] < mAO_NZDUSDrfd[2] &&
         mAO_NZDUSDrfd[2] < mAO_NZDUSDrfd[3] &&
         mAO_NZDUSDrfd[3] < mAO_NZDUSDrfd[4] &&
         mAO_NZDUSDrfd[4] > mAO_NZDUSDrfd[5] &&
         (iLow("NZDUSDrfd",PERIOD(),0) > iHigh("NZDUSDrfd",PERIOD(),1)))
         {
         Print("5 минут продажа");
         AO_SIGNAL[1] = true;
         caseLotAO = 1;
         Lot();
         }
   } 

};