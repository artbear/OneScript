﻿#Использовать "templateslib"

Перем юТест;

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	ВсеТесты.Добавить("ТестДолжен_ПолучитьМакетВидаФайл");
	ВсеТесты.Добавить("ТестДолжен_ПолучитьМакетВидаДвоичныеДанные");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьВыбросИсключенияНаНеверномМакете");
	Возврат ВсеТесты;
	
КонецФункции

Процедура ТестДолжен_ПолучитьМакетВидаФайл() Экспорт
	Путь = ПолучитьМакет("/templateslib/Data");
	юТест.ПроверитьРавенство(Тип("Строка"), ТипЗнч(Путь));
	
	ЧтениеТекста = Новый ЧтениеТекста(Путь);
	Строка = ЧтениеТекста.Прочитать();
	
	юТест.ПроверитьРавенство("ПРИВЕТ, Я МАКЕТ", Строка);

КонецПроцедуры
