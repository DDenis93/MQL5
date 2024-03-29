int Tests = 0;
void Errors()
{
switch(Tests){

case    0: Print("ОШИБОК ПРОГРАММЫ НЕТ"); ResetLastError(); break;
case 4001: Print("ОШИБКА: ERR_INTERNAL_ERROR - Неожиданная внутренняя ошибка"); ResetLastError(); break;
case 4002: Print("ОШИБКА: ERR_WRONG_INTERNAL_PARAMETER - Ошибочный параметр при внутреннем вызове функции клиентского терминала"); ResetLastError(); break;
case 4003: Print("ОШИБКА: ERR_INVALID_PARAMETER - Ошибочный параметр при вызове системной функции"); ResetLastError(); break;
case 4004: Print("ОШИБКА: ERR_NOT_ENOUGH_MEMORY - Недостаточно памяти для выполнения системной функции"); ResetLastError(); break;
case 4005: Print("ОШИБКА: ERR_STRUCT_WITHOBJECTS_ORCLASS - Структура содержит объекты строк и/или динамических массивов и/или структуры с такими объектами и/или классы"); ResetLastError(); break;
case 4006: Print("ОШИБКА: ERR_INVALID_ARRAY - Массив неподходящего типа, неподходящего размера или испорченный объект динамического массива"); ResetLastError(); break;
case 4007: Print("ОШИБКА: ERR_ARRAY_RESIZE_ERROR - Недостаточно памяти для перераспределения массива либо попытка изменения размера статического массива"); ResetLastError(); break;
case 4008: Print("ОШИБКА: ERR_STRING_RESIZE_ERROR - Недостаточно памяти для перераспределения строки"); ResetLastError(); break;
case 4009: Print("ОШИБКА: ERR_NOTINITIALIZED_STRING - Неинициализированная строка"); ResetLastError(); break;
case 4010: Print("ОШИБКА: ERR_INVALID_DATETIME - Неправильное значение даты и/или времени"); ResetLastError(); break;
case 4011: Print("ОШИБКА: ERR_ARRAY_BAD_SIZE - Общее число элементов в массиве не может превышать 2147483647"); ResetLastError(); break;
case 4012: Print("ОШИБКА: ERR_INVALID_POINTER - Ошибочный указатель"); ResetLastError(); break;
case 4013: Print("ОШИБКА: ERR_INVALID_POINTER_TYPE - Ошибочный тип указателя"); ResetLastError(); break;
case 4014: Print("ОШИБКА: ERR_FUNCTION_NOT_ALLOWED - Системная функция не разрешена для вызова"); ResetLastError(); break;
case 4015: Print("ОШИБКА: ERR_RESOURCE_NAME_DUPLICATED - Совпадение имени динамического и статического ресурсов"); ResetLastError(); break;
case 4016: Print("ОШИБКА: ERR_RESOURCE_NOT_FOUND - Ресурс с таким именем в EX5 не найден"); ResetLastError(); break;
case 4017: Print("ОШИБКА: ERR_RESOURCE_UNSUPPOTED_TYPE - Неподдерживаемый тип ресурса или размер более 16 MB"); ResetLastError(); break;
case 4018: Print("ОШИБКА: ERR_RESOURCE_NAME_IS_TOO_LONG - Имя ресурса превышает 63 символа"); ResetLastError(); break;
case 4019: Print("ОШИБКА: ERR_MATH_OVERFLOW - При вычислении математической функции произошло переполнение"); ResetLastError(); break;
case 4020: Print("ОШИБКА: ERR_SLEEP_ERROR - Выход за дату окончания тестирования после вызова Sleep()"); ResetLastError(); break;
case 4022: Print("ОШИБКА: ERR_PROGRAM_STOPPED - Тестирование было прекращено принудительно извне. Например, прервана оптимизацию, или закрыто окно визуального тестирования, или остановлен агент тестирования"); ResetLastError(); break;
// Графики
case 4101: Print("ОШИБКА: ERR_CHART_WRONG_ID - Ошибочный идентификатор графика"); ResetLastError(); break;
case 4102: Print("ОШИБКА: ERR_CHART_NO_REPLY - График не отвечает"); ResetLastError(); break;
case 4103: Print("ОШИБКА: ERR_CHART_NOT_FOUND - График не найден"); ResetLastError(); break;
case 4104: Print("ОШИБКА: ERR_CHART_NO_EXPERT - У графика нет эксперта, который мог бы обработать событие"); ResetLastError(); break;
case 4105: Print("ОШИБКА: ERR_CHART_CANNOT_OPEN - Ошибка открытия графика"); ResetLastError(); break;
case 4106: Print("ОШИБКА: ERR_CHART_CANNOT_CHANGE - Ошибка при изменении для графика символа и периода"); ResetLastError(); break;
case 4107: Print("ОШИБКА: ERR_CHART_WRONG_PARAMETER - Ошибочное значение параметра для функции по работе с графиком"); ResetLastError(); break;
case 4108: Print("ОШИБКА: ERR_CHART_CANNOT_CREATE_TIMER - Ошибка при создании таймера"); ResetLastError(); break;
case 4109: Print("ОШИБКА: ERR_CHART_WRONG_PROPERTY - Ошибочный идентификатор свойства графика"); ResetLastError(); break;
case 4110: Print("ОШИБКА: ERR_CHART_SCREENSHOT_FAILED - Ошибка при создании скриншота"); ResetLastError(); break;
case 4111: Print("ОШИБКА: ERR_CHART_NAVIGATE_FAILED - Ошибка навигации по графику"); ResetLastError(); break;
case 4112: Print("ОШИБКА: ERR_CHART_TEMPLATE_FAILED - Ошибка при применении шаблона"); ResetLastError(); break;
case 4113: Print("ОШИБКА: ERR_CHART_WINDOW_NOT_FOUND - Подокно, содержащее указанный индикатор, не найдено"); ResetLastError(); break;
case 4114: Print("ОШИБКА: ERR_CHART_INDICATOR_CANNOT_ADD - Ошибка при добавлении индикатора на график"); ResetLastError(); break;
case 4115: Print("ОШИБКА: ERR_CHART_INDICATOR_CANNOT_DEL - Ошибка при удалении индикатора с графика"); ResetLastError(); break;
case 4116: Print("ОШИБКА: ERR_CHART_INDICATOR_NOT_FOUND - Индикатор не найден на указанном графике"); ResetLastError(); break;
// Графические объекты
case 4201: Print("ОШИБКА: ERR_OBJECT_ERROR - Ошибка при работе с графическим объектом"); ResetLastError(); break;
case 4202: Print("ОШИБКА: ERR_OBJECT_NOT_FOUND - Графический объект не найден"); ResetLastError(); break;
case 4203: Print("ОШИБКА: ERR_OBJECT_WRONG_PROPERTY - Ошибочный идентификатор свойства графического объекта"); ResetLastError(); break;
case 4204: Print("ОШИБКА: ERR_OBJECT_GETDATE_FAILED - Невозможно получить дату, соответствующую значению"); ResetLastError(); break;
case 4205: Print("ОШИБКА: ERR_OBJECT_GETVALUE_FAILED - Невозможно получить значение, соответствующее дате"); ResetLastError(); break;
// MarketInfo
case 4301: Print("ОШИБКА: ERR_MARKET_UNKNOWN_SYMBOL - Неизвестный символ"); ResetLastError(); break;
case 4302: Print("ОШИБКА: ERR_MARKET_NOT_SELECTED - Символ не выбран в MarketWatch"); ResetLastError(); break;
case 4303: Print("ОШИБКА: ERR_MARKET_WRONG_PROPERTY - Ошибочный идентификатор свойства символа"); ResetLastError(); break;
case 4304: Print("ОШИБКА: ERR_MARKET_LASTTIME_UNKNOWN - Время последнего тика неизвестно (тиков не было)"); ResetLastError(); break;
case 4305: Print("ОШИБКА: ERR_MARKET_SELECT_ERROR - Ошибка добавления или удаления символа в MarketWatch"); ResetLastError(); break;
// Доступ к истории
case 4401: Print("ОШИБКА: ERR_HISTORY_NOT_FOUND - Запрашиваемая история не найдена"); ResetLastError(); break;
case 4402: Print("ОШИБКА: ERR_HISTORY_WRONG_PROPERTY - Ошибочный идентификатор свойства истории"); ResetLastError(); break;
case 4403: Print("ОШИБКА: ERR_HISTORY_TIMEOUT - Превышен таймаут при запросе истории"); ResetLastError(); break;
case 4404: Print("ОШИБКА: ERR_HISTORY_BARS_LIMIT - Количество запрашиваемых баров ограничено настройками терминала"); ResetLastError(); break;
case 4405: Print("ОШИБКА: ERR_HISTORY_LOAD_ERRORS - Множество ошибок при загрузке истории"); ResetLastError(); break;
case 4407: Print("ОШИБКА: ERR_HISTORY_SMALL_BUFFER - Принимающий массив слишком мал чтобы вместить все запрошенные данные"); ResetLastError(); break;
// Глобальные переменные терминала
case 4501: Print("ОШИБКА: ERR_GLOBALVARIABLE_NOT_FOUND - Глобальная переменная клиентского терминала не найдена"); ResetLastError(); break;
case 4502: Print("ОШИБКА: ERR_GLOBALVARIABLE_EXISTS - Глобальная переменная клиентского терминала с таким именем уже существует"); ResetLastError(); break;
case 4503: Print("ОШИБКА: ERR_GLOBALVARIABLE_NOT_MODIFIED - Не было модификаций глобальных переменных"); ResetLastError(); break;
case 4504: Print("ОШИБКА: ERR_GLOBALVARIABLE_CANNOTREAD - Не удалось открыть и прочитать файл со значениями глобальных переменных"); ResetLastError(); break;
case 4505: Print("ОШИБКА: ERR_GLOBALVARIABLE_CANNOTWRITE - Не удалось записать файл со значениями глобальных переменных"); ResetLastError(); break;
case 4510: Print("ОШИБКА: ERR_MAIL_SEND_FAILED - Не удалось отправить письмо"); ResetLastError(); break;
case 4511: Print("ОШИБКА: ERR_PLAY_SOUND_FAILED - Не удалось воспроизвести звук"); ResetLastError(); break;
case 4512: Print("ОШИБКА: ERR_MQL5_WRONG_PROPERTY - Ошибочный идентификатор свойства программы"); ResetLastError(); break;
case 4513: Print("ОШИБКА: ERR_TERMINAL_WRONG_PROPERTY - Ошибочный идентификатор свойства терминала"); ResetLastError(); break;
case 4514: Print("ОШИБКА: ERR_FTP_SEND_FAILED - Не удалось отправить файл по ftp"); ResetLastError(); break;
case 4515: Print("ОШИБКА: ERR_NOTIFICATION_SEND_FAILED - Не удалось отправить уведомление"); ResetLastError(); break;
case 4516: Print("ОШИБКА: ERR_NOTIFICATION_WRONG_PARAMETER - Неверный параметр для отправки уведомления – в функцию SendNotification() передали пустую строку или NULL"); ResetLastError(); break;
case 4517: Print("ОШИБКА: ERR_NOTIFICATION_WRONG_SETTINGS - Неверные настройки уведомлений в терминале (не указан ID или не выставлено разрешение)"); ResetLastError(); break;
case 4518: Print("ОШИБКА: ERR_NOTIFICATION_TOO_FREQUENT - Слишком частая отправка уведомлений"); ResetLastError(); break;
case 4519: Print("ОШИБКА: ERR_FTP_NOSERVER - Не указан FTP сервер"); ResetLastError(); break;
case 4520: Print("ОШИБКА: ERR_FTP_NOLOGIN - Не указан FTP логин"); ResetLastError(); break;
case 4521: Print("ОШИБКА: ERR_FTP_FILE_ERROR - Не найден файл в директории MQL5/Files для отправки на FTP сервер"); ResetLastError(); break;
case 4522: Print("ОШИБКА: ERR_FTP_CONNECT_FAILED - Ошибка при подключении к FTP серверу"); ResetLastError(); break;
case 4523: Print("ОШИБКА: ERR_FTP_CHANGEDIR - На FTP сервере не найдена директория для выгрузки файла"); ResetLastError(); break;
case 4524: Print("ОШИБКА: ERR_FTP_CLOSED - Подключение к FTP серверу закрыто"); ResetLastError(); break;
// Буферы пользовательских индикаторов
case 4601: Print("ОШИБКА: ERR_BUFFERS_NO_MEMORY - Недостаточно памяти для распределения индикаторных буферов"); ResetLastError(); break;
case 4602: Print("ОШИБКА: ERR_BUFFERS_WRONG_INDEX - Ошибочный индекс своего индикаторного буфера"); ResetLastError(); break;
// Свойства пользовательских индикаторов
case 4603: Print("ОШИБКА: ERR_CUSTOM_WRONG_PROPERTY - Ошибочный идентификатор свойства пользовательского индикатора"); ResetLastError(); break;
// Account
case 4701: Print("ОШИБКА: ERR_ACCOUNT_WRONG_PROPERTY - Ошибочный идентификатор свойства счета"); ResetLastError(); break;
case 4751: Print("ОШИБКА: ERR_TRADE_WRONG_PROPERTY - Ошибочный идентификатор свойства торговли"); ResetLastError(); break;
case 4752: Print("ОШИБКА: ERR_TRADE_DISABLED - Торговля для эксперта запрещена"); ResetLastError(); break;
case 4753: Print("ОШИБКА: ERR_TRADE_POSITION_NOT_FOUND - Позиция не найдена"); ResetLastError(); break;
case 4754: Print("ОШИБКА: ERR_TRADE_ORDER_NOT_FOUND - Ордер не найден"); ResetLastError(); break;
case 4755: Print("ОШИБКА: ERR_TRADE_DEAL_NOT_FOUND - Сделка не найдена"); ResetLastError(); break;
case 4756: Print("ОШИБКА: ERR_TRADE_SEND_FAILED - Не удалось отправить торговый запрос"); ResetLastError(); break;
case 4758: Print("ОШИБКА: ERR_TRADE_CALC_FAILED - Не удалось вычислить значение прибыли или маржи"); ResetLastError(); break;
// Индикаторы
case 4801: Print("ОШИБКА: ERR_INDICATOR_UNKNOWN_SYMBOL - Неизвестный символ"); ResetLastError(); break;
case 4802: Print("ОШИБКА: ERR_INDICATOR_CANNOT_CREATE - Индикатор не может быть создан"); ResetLastError(); break;
case 4803: Print("ОШИБКА: ERR_INDICATOR_NO_MEMORY - Недостаточно памяти для добавления индикатора"); ResetLastError(); break;
case 4804: Print("ОШИБКА: ERR_INDICATOR_CANNOT_APPLY - Индикатор не может быть применен к другому индикатору"); ResetLastError(); break;
case 4805: Print("ОШИБКА: ERR_INDICATOR_CANNOT_ADD - Ошибка при добавлении индикатора"); ResetLastError(); break;
case 4806: Print("ОШИБКА: ERR_INDICATOR_DATA_NOT_FOUND - Запрошенные данные не найдены"); ResetLastError(); break;
case 4807: Print("ОШИБКА: ERR_INDICATOR_WRONG_HANDLE - Ошибочный хэндл индикатора"); ResetLastError(); break;
case 4808: Print("ОШИБКА: ERR_INDICATOR_WRONG_PARAMETERS - Неправильное количество параметров при создании индикатора"); ResetLastError(); break;
case 4809: Print("ОШИБКА: ERR_INDICATOR_PARAMETERS_MISSING - Отсутствуют параметры при создании индикатора"); ResetLastError(); break;
case 4810: Print("ОШИБКА: ERR_INDICATOR_CUSTOM_NAME - Первым параметром в массиве должно быть имя пользовательского индикатора"); ResetLastError(); break;
case 4811: Print("ОШИБКА: ERR_INDICATOR_PARAMETER_TYPE - Неправильный тип параметра в массиве при создании индикатора"); ResetLastError(); break;
case 4812: Print("ОШИБКА: ERR_INDICATOR_WRONG_INDEX - Ошибочный индекс запрашиваемого индикаторного буфера"); ResetLastError(); break;
// Стакан цен
case 4901: Print("ОШИБКА: ERR_BOOKS_CANNOT_ADD - Стакан цен не может быть добавлен"); ResetLastError(); break;
case 4902: Print("ОШИБКА: ERR_BOOKS_CANNOT_DELETE - Стакан цен не может быть удален"); ResetLastError(); break;
case 4903: Print("ОШИБКА: ERR_BOOKS_CANNOT_GET - Данные стакана цен не могут быть получены"); ResetLastError(); break;
case 4904: Print("ОШИБКА: ERR_BOOKS_CANNOT_SUBSCRIBE - Ошибка при подписке на получение новых данных стакана цен"); ResetLastError(); break;
// Файловые операции
case 5001: Print("ОШИБКА: ERR_TOO_MANY_FILES - Не может быть открыто одновременно более 64 файлов"); ResetLastError(); break;
case 5002: Print("ОШИБКА: ERR_WRONG_FILENAME - Недопустимое имя файла"); ResetLastError(); break;
case 5003: Print("ОШИБКА: ERR_TOO_LONG_FILENAME - Слишком длинное имя файла"); ResetLastError(); break;
case 5004: Print("ОШИБКА: ERR_CANNOT_OPEN_FILE - Ошибка открытия файла"); ResetLastError(); break;
case 5005: Print("ОШИБКА: ERR_FILE_CACHEBUFFER_ERROR - Недостаточно памяти для кеша чтения"); ResetLastError(); break;
case 5006: Print("ОШИБКА: ERR_CANNOT_DELETE_FILE - Ошибка удаления файла"); ResetLastError(); break;
case 5007: Print("ОШИБКА: ERR_INVALID_FILEHANDLE - Файл с таким хэндлом уже был закрыт, либо не открывался вообще"); ResetLastError(); break;
case 5008: Print("ОШИБКА: ERR_WRONG_FILEHANDLE - Ошибочный хэндл файла"); ResetLastError(); break;
case 5009: Print("ОШИБКА: ERR_FILE_NOTTOWRITE - Файл должен быть открыт для записи"); ResetLastError(); break;
case 5010: Print("ОШИБКА: ERR_FILE_NOTTOREAD - Файл должен быть открыт для чтения"); ResetLastError(); break;
case 5011: Print("ОШИБКА: ERR_FILE_NOTBIN - Файл должен быть открыт как бинарный"); ResetLastError(); break;
case 5012: Print("ОШИБКА: ERR_FILE_NOTTXT - Файл должен быть открыт как текстовый"); ResetLastError(); break;
case 5013: Print("ОШИБКА: ERR_FILE_NOTTXTORCSV - Файл должен быть открыт как текстовый или CSV"); ResetLastError(); break;
case 5014: Print("ОШИБКА: ERR_FILE_NOTCSV - Файл должен быть открыт как CSV"); ResetLastError(); break;
case 5015: Print("ОШИБКА: ERR_FILE_READERROR - Ошибка чтения файла"); ResetLastError(); break;
case 5016: Print("ОШИБКА: ERR_FILE_BINSTRINGSIZE - Должен быть указан размер строки, так как файл открыт как бинарный"); ResetLastError(); break;
case 5017: Print("ОШИБКА: ERR_INCOMPATIBLE_FILE - Для строковых массивов должен быть текстовый файл, для остальных – бинарный"); ResetLastError(); break;
case 5018: Print("ОШИБКА: ERR_FILE_IS_DIRECTORY - Это не файл, а директория"); ResetLastError(); break;
case 5019: Print("ОШИБКА: ERR_FILE_NOT_EXIST - Файл не существует"); ResetLastError(); break;
case 5020: Print("ОШИБКА: ERR_FILE_CANNOT_REWRITE - Файл не может быть переписан"); ResetLastError(); break;
case 5021: Print("ОШИБКА: ERR_WRONG_DIRECTORYNAME - Ошибочное имя директории"); ResetLastError(); break;
case 5022: Print("ОШИБКА: ERR_DIRECTORY_NOT_EXIST - Директория не существует"); ResetLastError(); break;
case 5023: Print("ОШИБКА: ERR_FILE_ISNOT_DIRECTORY - Это файл, а не директория"); ResetLastError(); break;
case 5024: Print("ОШИБКА: ERR_CANNOT_DELETE_DIRECTORY - Директория не может быть удалена"); ResetLastError(); break;
case 5025: Print("ОШИБКА: ERR_CANNOT_CLEAN_DIRECTORY - Не удалось очистить директорию (возможно, один или несколько файлов заблокированы и операция удаления не удалась)"); ResetLastError(); break;
case 5026: Print("ОШИБКА: ERR_FILE_WRITEERROR - Не удалось записать ресурс в файл"); ResetLastError(); break;
case 5027: Print("ОШИБКА: ERR_FILE_ENDOFFILE - Не удалось прочитать следующую порцию данных из CSV-файла (FileReadString,FileReadNumber,FileReadDatetime,FileReadBool), так как достигнут конец файла"); ResetLastError(); break;
// Преобразование строк
case 5030: Print("ОШИБКА: ERR_NO_STRING_DATE - В строке нет даты"); ResetLastError(); break;
case 5031: Print("ОШИБКА: ERR_WRONG_STRING_DATE - В строке ошибочная дата"); ResetLastError(); break;
case 5032: Print("ОШИБКА: ERR_WRONG_STRING_TIME - В строке ошибочное время"); ResetLastError(); break;
case 5033: Print("ОШИБКА: ERR_STRING_TIME_ERROR - Ошибка преобразования строки в дату"); ResetLastError(); break;
case 5034: Print("ОШИБКА: ERR_STRING_OUT_OF_MEMORY - Недостаточно памяти для строки"); ResetLastError(); break;
case 5035: Print("ОШИБКА: ERR_STRING_SMALL_LEN - Длина строки меньше, чем ожидалось"); ResetLastError(); break;
case 5036: Print("ОШИБКА: ERR_STRING_TOO_BIGNUMBER - Слишком большое число, больше, чем ULONG_MAX"); ResetLastError(); break;
case 5037: Print("ОШИБКА: ERR_WRONG_FORMATSTRING - Ошибочная форматная строка"); ResetLastError(); break;
case 5038: Print("ОШИБКА: ERR_TOO_MANY_FORMATTERS - Форматных спецификаторов больше, чем параметров"); ResetLastError(); break;
case 5039: Print("ОШИБКА: ERR_TOO_MANY_PARAMETERS - Параметров больше, чем форматных спецификаторов"); ResetLastError(); break;
case 5040: Print("ОШИБКА: ERR_WRONG_STRING_PARAMETER - Испорченный параметр типа string"); ResetLastError(); break;
case 5041: Print("ОШИБКА: ERR_STRINGPOS_OUTOFRANGE - Позиция за пределами строки"); ResetLastError(); break;
case 5042: Print("ОШИБКА: ERR_STRING_ZEROADDED - К концу строки добавлен 0, бесполезная операция"); ResetLastError(); break;
case 5043: Print("ОШИБКА: ERR_STRING_UNKNOWNTYPE - Неизвестный тип данных при конвертации в строку"); ResetLastError(); break;
case 5044: Print("ОШИБКА: ERR_WRONG_STRING_OBJECT - Испорченный объект строки"); ResetLastError(); break;
// Работа с массивами
case 5050: Print("ОШИБКА: ERR_INCOMPATIBLE_ARRAYS - Копирование несовместимых массивов. Строковый массив может быть скопирован только в строковый, а числовой массив – в числовой"); ResetLastError(); break;
case 5051: Print("ОШИБКА: ERR_SMALL_ASSERIES_ARRAY - Приемный массив объявлен как AS_SERIES, и он недостаточного размера"); ResetLastError(); break;
case 5052: Print("ОШИБКА: ERR_SMALL_ARRAY - Слишком маленький массив, стартовая позиция за пределами массива"); ResetLastError(); break;
case 5053: Print("ОШИБКА: ERR_ZEROSIZE_ARRAY - Массив нулевой длины"); ResetLastError(); break;
case 5054: Print("ОШИБКА: ERR_NUMBER_ARRAYS_ONLY - Должен быть числовой массив"); ResetLastError(); break;
case 5055: Print("ОШИБКА: ERR_ONEDIM_ARRAYS_ONLY - Должен быть одномерный массив"); ResetLastError(); break;
case 5056: Print("ОШИБКА: ERR_SERIES_ARRAY - Таймсерия не может быть использована"); ResetLastError(); break;
case 5057: Print("ОШИБКА: ERR_DOUBLE_ARRAY_ONLY - Должен быть массив типа double"); ResetLastError(); break;
case 5058: Print("ОШИБКА: ERR_FLOAT_ARRAY_ONLY - Должен быть массив типа float"); ResetLastError(); break;
case 5059: Print("ОШИБКА: ERR_LONG_ARRAY_ONLY - Должен быть массив типа long"); ResetLastError(); break;
case 5060: Print("ОШИБКА: ERR_INT_ARRAY_ONLY - Должен быть массив типа int"); ResetLastError(); break;
case 5061: Print("ОШИБКА: ERR_SHORT_ARRAY_ONLY - Должен быть массив типа short"); ResetLastError(); break;
case 5062: Print("ОШИБКА: ERR_CHAR_ARRAY_ONLY - Должен быть массив типа char"); ResetLastError(); break;
case 5063: Print("ОШИБКА: ERR_STRING_ARRAY_ONLY - Должен быть массив типа string"); ResetLastError(); break;
// Работа с OpenCL
case 5100: Print("ОШИБКА: ERR_OPENCL_NOT_SUPPORTED - Функции OpenCL на данном компьютере не поддерживаются"); ResetLastError(); break;
case 5101: Print("ОШИБКА: ERR_OPENCL_INTERNAL - Внутренняя ошибка при выполнении OpenCL"); ResetLastError(); break;
case 5102: Print("ОШИБКА: ERR_OPENCL_INVALID_HANDLE - Неправильный хэндл OpenCL"); ResetLastError(); break;
case 5103: Print("ОШИБКА: ERR_OPENCL_CONTEXT_CREATE - Ошибка при создании контекста OpenCL"); ResetLastError(); break;
case 5104: Print("ОШИБКА: ERR_OPENCL_QUEUE_CREATE - Ошибка создания очереди выполнения в OpenCL"); ResetLastError(); break;
case 5105: Print("ОШИБКА: ERR_OPENCL_PROGRAM_CREATE - Ошибка при компиляции программы OpenCL"); ResetLastError(); break;
case 5106: Print("ОШИБКА: ERR_OPENCL_TOO_LONG_KERNEL_NAME - Слишком длинное имя точки входа (кернел OpenCL)"); ResetLastError(); break;
case 5107: Print("ОШИБКА: ERR_OPENCL_KERNEL_CREATE - Ошибка создания кернел - точки входа OpenCL"); ResetLastError(); break;
case 5108: Print("ОШИБКА: ERR_OPENCL_SET_KERNEL_PARAMETER - Ошибка при установке параметров для кернел OpenCL (точки входа в программу OpenCL)"); ResetLastError(); break;
case 5109: Print("ОШИБКА: ERR_OPENCL_EXECUTE - Ошибка выполнения программы OpenCL"); ResetLastError(); break;
case 5110: Print("ОШИБКА: ERR_OPENCL_WRONG_BUFFER_SIZE - Неверный размер буфера OpenCL"); ResetLastError(); break;
case 5111: Print("ОШИБКА: ERR_OPENCL_WRONG_BUFFER_OFFSET - Неверное смещение в буфере OpenCL"); ResetLastError(); break;
case 5112: Print("ОШИБКА: ERR_OPENCL_BUFFER_CREATE - Ошибка создания буфера OpenCL"); ResetLastError(); break;
case 5113: Print("ОШИБКА: ERR_OPENCL_TOO_MANY_OBJECTS - Превышено максимальное число OpenCL объектов"); ResetLastError(); break;
case 5114: Print("ОШИБКА: ERR_OPENCL_SELECTDEVICE - Ошибка выбора OpenCL устройства"); ResetLastError(); break;
// Работа с базами данных
case 5120: Print("ОШИБКА: ERR_DATABASE_INTERNAL - Внутренняя ошибка базы данных"); ResetLastError(); break;
case 5121: Print("ОШИБКА: ERR_DATABASE_INVALID_HANDLE - Невалидный хендл базы данных"); ResetLastError(); break;
case 5122: Print("ОШИБКА: ERR_DATABASE_TOO_MANY_OBJECTS - Превышено максимально допустимое количество объектов Database"); ResetLastError(); break;
case 5123: Print("ОШИБКА: ERR_DATABASE_CONNECT - Ошибка подключения к базе данных"); ResetLastError(); break;
case 5124: Print("ОШИБКА: ERR_DATABASE_EXECUTE - Ошибка выполнения запроса"); ResetLastError(); break;
case 5125: Print("ОШИБКА: ERR_DATABASE_PREPARE - Ошибка создания запроса"); ResetLastError(); break;
case 5126: Print("ОШИБКА: ERR_DATABASE_NO_MORE_DATA - Данных для чтения больше нет"); ResetLastError(); break;
case 5127: Print("ОШИБКА: ERR_DATABASE_STEP - Ошибка перехода к следующей записи запроса"); ResetLastError(); break;
case 5128: Print("ОШИБКА: ERR_DATABASE_NOT_READY - Данные для чтения результатов запроса еще не готовы"); ResetLastError(); break;
case 5129: Print("ОШИБКА: ERR_DATABASE_BIND_PARAMETERS - Ошибка автоподстановки параметров в SQL-запрос"); ResetLastError(); break;
case 5130: Print("ОШИБКА: ERR_DATABASE_QUERY_NOT_READONLY - Описание ошибки отсутствует"); ResetLastError(); break;
// Работа с WebRequest()
case 5200: Print("ОШИБКА: ERR_WEBREQUEST_INVALID_ADDRESS - URL не прошел проверку"); ResetLastError(); break;
case 5201: Print("ОШИБКА: ERR_WEBREQUEST_CONNECT_FAILED - Не удалось подключиться к указанному URL"); ResetLastError(); break;
case 5202: Print("ОШИБКА: ERR_WEBREQUEST_TIMEOUT - Превышен таймаут получения данных"); ResetLastError(); break;
case 5203: Print("ОШИБКА: ERR_WEBREQUEST_REQUEST_FAILED - Ошибка в результате выполнения HTTP запроса"); ResetLastError(); break;
// Работа с сетью (сокетами)
case 5270: Print("ОШИБКА: ERR_NETSOCKET_INVALIDHANDLE - В функцию передан неверный хэндл сокета"); ResetLastError(); break;
case 5271: Print("ОШИБКА: ERR_NETSOCKET_TOO_MANY_OPENED - Открыто слишком много сокетов (максимум 128)"); ResetLastError(); break;
case 5272: Print("ОШИБКА: ERR_NETSOCKET_CANNOT_CONNECT - Ошибка соединения с удаленным хостом"); ResetLastError(); break;
case 5273: Print("ОШИБКА: ERR_NETSOCKET_IO_ERROR - Ошибка отправки/получения данных из сокета"); ResetLastError(); break;
case 5274: Print("ОШИБКА: ERR_NETSOCKET_HANDSHAKE_FAILED - Ошибка установления защищенного соединения (TLS Handshake)"); ResetLastError(); break;
case 5275: Print("ОШИБКА: ERR_NETSOCKET_NO_CERTIFICATE - Отсутствуют данные о сертификате, которым защищено подключение"); ResetLastError(); break;
// Пользовательские символы
case 5300: Print("ОШИБКА: ERR_NOT_CUSTOM_SYMBOL - Должен быть указан пользовательский символ"); ResetLastError(); break;
case 5301: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_WRONG_NAME - Некорректное имя пользовательского символа. В имени символа можно использовать только латинские буквы без знаков препинания, пробелов и спецсимволов (допускаются ., _, & и #). Не рекомендуется использовать символы <, >, :, ", "/","\", |, ?, *."); ResetLastError(); break;
case 5302: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_NAME_LONG - Слишком длинное имя для пользовательского символа. Длина имени символа не должна превышать 32 знака с учётом завершающего 0"); ResetLastError(); break;
case 5303: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_PATH_LONG - Слишком длинный путь для пользовательского символа. Длина пути не более 128 знаков с учётом Custom\\, имени символа, разделителей групп и завершающего 0"); ResetLastError(); break;
case 5304: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_EXIST - Пользовательский символ с таким именем уже существует"); ResetLastError(); break;
case 5305: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_ERROR - Ошибка при создании, удалении или изменении пользовательского символа"); ResetLastError(); break;
case 5306: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_SELECTED - Попытка удалить пользовательский символ, выбранный в обзоре рынка (Market Watch)"); ResetLastError(); break;
case 5307: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_PROPERTY_WRONG - Неправильное свойство пользовательского символа"); ResetLastError(); break;
case 5308: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_PARAMETER_ERROR - Ошибочный параметр при установке свойства пользовательского символа"); ResetLastError(); break;
case 5309: Print("ОШИБКА: ERR_CUSTOM_SYMBOL_PARAMETER_LONG - Слишком длинный строковый параметр при установке свойства пользовательского символа"); ResetLastError(); break;
case 5310: Print("ОШИБКА: ERR_CUSTOM_TICKS_WRONG_ORDER - Не упорядоченный по времени массив тиков"); ResetLastError(); break;
// Экономический календарь
case 5400: Print("ОШИБКА: ERR_CALENDAR_MORE_DATA - Размер массива недостаточен для получения описаний всех значений"); ResetLastError(); break; 
case 5401: Print("ОШИБКА: ERR_CALENDAR_TIMEOUT - Превышен лимит запроса по времени"); ResetLastError(); break;
case 5402: Print("ОШИБКА: ERR_CALENDAR_NO_DATA - Страна не найдена"); ResetLastError(); break;
// Работа с базами данных
case 5601: Print("ОШИБКА: ERR_DATABASE_ERROR - Общая ошибка"); ResetLastError(); break;
case 5602: Print("ОШИБКА: ERR_DATABASE_INTERNAL - Внутренняя логическая ошибка в SQLite"); ResetLastError(); break;
case 5603: Print("ОШИБКА: ERR_DATABASE_PERM - Отказано в доступе"); ResetLastError(); break;
case 5604: Print("ОШИБКА: ERR_DATABASE_ABORT - Процедура обратного вызова запросила прерывание"); ResetLastError(); break;
case 5605: Print("ОШИБКА: ERR_DATABASE_BUSY - Файл базы данных заблокирован"); ResetLastError(); break;
case 5606: Print("ОШИБКА: ERR_DATABASE_LOCKED - Таблица в базе данных заблокирована"); ResetLastError(); break;
case 5607: Print("ОШИБКА: ERR_DATABASE_NOMEM - Сбой malloc ()"); ResetLastError(); break;
case 5608: Print("ОШИБКА: ERR_DATABASE_READONLY - Попытка записи в базу данных, доступной только для чтения"); ResetLastError(); break;
case 5609: Print("ОШИБКА: ERR_DATABASE_INTERRUPT - Операция прекращена с помощью sqlite3_interrupt ()"); ResetLastError(); break;
case 5610: Print("ОШИБКА: ERR_DATABASE_IOERR - Ошибка дискового вводавывода"); ResetLastError(); break;
case 5611: Print("ОШИБКА: ERR_DATABASE_CORRUPT - Образ диска базы данных испорчен"); ResetLastError(); break;
case 5612: Print("ОШИБКА: ERR_DATABASE_NOTFOUND - Неизвестный код операции в sqlite3_file_control ()"); ResetLastError(); break;
case 5613: Print("ОШИБКА: ERR_DATABASE_FULL - Ошибка вставки, так как база данных заполнена"); ResetLastError(); break;
case 5614: Print("ОШИБКА: ERR_DATABASE_CANTOPEN - Невозможно открыть файл базы данных"); ResetLastError(); break;
case 5615: Print("ОШИБКА: ERR_DATABASE_PROTOCOL - Ошибка протокола блокировки базы данных"); ResetLastError(); break;
case 5616: Print("ОШИБКА: ERR_DATABASE_EMPTY - Только для внутреннего использования"); ResetLastError(); break;
case 5617: Print("ОШИБКА: ERR_DATABASE_SCHEMA - Схема базы данных изменена"); ResetLastError(); break;
case 5618: Print("ОШИБКА: ERR_DATABASE_TOOBIG - Строка или BLOB превышает ограничение по размеру"); ResetLastError(); break;
case 5619: Print("ОШИБКА: ERR_DATABASE_CONSTRAINT - Прервано из-за нарушения ограничения"); ResetLastError(); break;
case 5620: Print("ОШИБКА: ERR_DATABASE_MISMATCH - Несоответствие типов данных"); ResetLastError(); break;
case 5621: Print("ОШИБКА: ERR_DATABASE_MISUSE - Ошибка неправильного использования библиотеки"); ResetLastError(); break;
case 5622: Print("ОШИБКА: ERR_DATABASE_NOLFS - Использование функций операционной системы, не поддерживаемых на хосте"); ResetLastError(); break;
case 5623: Print("ОШИБКА: ERR_DATABASE_AUTH - Отказано в авторизации"); ResetLastError(); break;
case 5624: Print("ОШИБКА: ERR_DATABASE_FORMAT - Не используется"); ResetLastError(); break;
case 5625: Print("ОШИБКА: ERR_DATABASE_RANGE - 2-й параметр для sqlite3_bind находится вне диапазона"); ResetLastError(); break;
case 5626: Print("ОШИБКА: ERR_DATABASE_NOTADB - Открытый файл не является файлом базы данных"); ResetLastError(); break;
// Пользовательские ошибки
case 65536: Print("ОШИБКА: ERR_USER_ERROR_FIRST - С этого кода начинаются ошибки, задаваемые пользователем"); ResetLastError(); break;
//  Ошибка не определена
default: Print("Код ошибки не известен"); ResetLastError(); break;
};
};