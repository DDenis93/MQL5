void OrderModify()
{
   ulong ticket;
   string com;
   Print("Есть открытые ордера, приступаем к их модификации!!!");
   int allOrder = OrdersTotal(); // список отложенных ордеров
   Print("Отложенные ордера - ",allOrder);
   for(int i=0;i<allOrder;i++)
   {
      if((ticket=OrderGetTicket(i))>0) // получаем общее количество отложенных ордеров
      {
         
         com = OrderGetString(ORDER_COMMENT); // получаем комментарий отложенного ордера
         Print(com," tiket = ",ticket);
      }
   }
   
   
   
   
   
   //          Активные ордера
   int OPosition = PositionsTotal(); // активные ордера - торговые
   Print("Активные ордера - ",OPosition);
}