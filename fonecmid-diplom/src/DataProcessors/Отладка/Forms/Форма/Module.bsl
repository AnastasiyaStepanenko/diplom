
&НаКлиенте
Процедура Акты(Команда)
	
	ПолучитьДанные();
	
КонецПроцедуры

&НаСервере
Процедура ПолучитьДанные()
	Период = Новый СтандартныйПериод();
	Период.ДатаНачала = НачалоМесяца(ТекущаяДата());
	Период.ДатаОкончания = КонецМесяца(ТекущаяДата());
	Данные = Обработки.ВКМ_МассовоеСозданиеАктов.СоздатьДокументыНаСервере(Период);
	
КонецПроцедуры

&НаСервере
Процедура ПроверкаНаСервере()
	ВКМ_Телеграм.ОбработатьИсходящийЗапрос();
КонецПроцедуры

&НаКлиенте
Процедура Проверка(Команда)
	ПроверкаНаСервере();
КонецПроцедуры
