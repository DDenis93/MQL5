// программа для работы робота в ходе новых тиков
void NewBars()
{
double _NewBars[2];
      
_NewBars[0] = iOpen("NZDUSDrfd",PERIOD(),0);      // цена открытия текущего    бара
_NewBars[1] = iOpen("NZDUSDrfd",PERIOD(),1);      // цена открытия предыдущего бара
raznica[1] = _NewBars[0] - _NewBars[1];            // разница в пунктах между текущим и предыдущими барами
   if(raznica[0] != raznica[1])                    // если цены открытия баров не равны
      {
      Print("Появился новый бар - разница ",(raznica[0]-raznica[1]));
      WhatMoney();                                 // переходим к вычислению доступных средств
      raznica[0] = raznica[1];
      }
   //else
      //Print("Новый бар скоро появится");
}