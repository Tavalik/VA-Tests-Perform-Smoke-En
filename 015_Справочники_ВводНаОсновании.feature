﻿
#language: ru

@tree

Функциональность: Дымовые тесты - Справочники - ВводНаОсновании
# Конфигурация: 1C:Perform
# Версия: 3.2.3.50

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: ВводНаОсновании элемента справочника "Infobase enumerations" (ПеречисленияБД)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.ПеречисленияБД КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующиего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника ПеречисленияБД"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника ПеречисленияБД"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник СоответствиеВнешнимИБ
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникСоответствиеВнешнимИБСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникСоответствиеВнешнимИБСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник СоответствиеВнешнимИБ на основании справочника ПеречисленияБД" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник СоответствиеВнешнимИБ на основании справочника ПеречисленияБД"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'

Сценарий: ВводНаОсновании элемента справочника "Infobase catalogs" (СправочникиБД)

	* Ищем ссылку на существующий элемент
		И я выполняю код встроенного языка на сервере
		"""bsl
			Объект.ЗначениеНаСервере = НЕОПРЕДЕЛЕНО;
			Запрос = Новый Запрос(
				"ВЫБРАТЬ ПЕРВЫЕ 1
				|	ТекДанныеИсточник.Ссылка КАК Ссылка
				|ИЗ
				|	Справочник.СправочникиБД КАК ТекДанныеИсточник
				|ГДЕ
				|	НЕ ТекДанныеИсточник.ПометкаУдаления
				|	И НЕ ТекДанныеИсточник.Предопределенный");
			ВыборкаЗапроса = Запрос.Выполнить().Выбрать();
			Если ВыборкаЗапроса.Следующий() Тогда
				Объект.ЗначениеНаСервере = ПолучитьНавигационнуюСсылку(ВыборкаЗапроса.Ссылка);
			КонецЕсли;
		"""
		И Я запоминаю значение выражения 'Объект.ЗначениеНаСервере' в переменную 'НавигационнаяСсылка'

	Если 'ЗначениеЗаполнено($НавигационнаяСсылка$)' Тогда

		* Отрываем форму существующиего элемента
			И Я открываю навигационную ссылку '$НавигационнаяСсылка$'
			Если появилось предупреждение Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника СправочникиБД"
			Если имя текущей формы "ErrorWindow" Тогда
				Тогда я вызываю исключение "Не удалось открыть существующий элемент справочника СправочникиБД"
			И я запоминаю заголовок формы в переменную 'ЗаголовокФормы'

		* Введем на основании Справочник СоответствиеВнешнимИБ
			Когда открылось окно '$ЗаголовокФормы$'
			Если элемент формы с именем 'ФормаСправочникСоответствиеВнешнимИБСоздатьНаОсновании' присутствует на форме Тогда
				И я нажимаю на кнопку с именем 'ФормаСправочникСоответствиеВнешнимИБСоздатьНаОсновании'
				Если появилось предупреждение Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник СоответствиеВнешнимИБ на основании справочника СправочникиБД" 
				Если имя текущей формы "ErrorWindow" Тогда
					Тогда я вызываю исключение "Не удалось ввести Справочник СоответствиеВнешнимИБ на основании справочника СправочникиБД"
				Тогда открылось окно '* (создание)'
				И Я закрываю окно '* (создание)'
