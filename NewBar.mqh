// программа для инициализации робота
void NewBar()
{
double _NewBar[2];
   
_NewBar[0] = iOpen("NZDUSDrfd",PERIOD_M5,0);
_NewBar[1] = iOpen("NZDUSDrfd",PERIOD_M5,1);
raznica[0] = _NewBar[0]-_NewBar[1];       // резурв разница [1]

;}