﻿
#language: ru

@tree

Функциональность: Дымовые тесты - ПланыВидовХарактеристик - ФормаСписка
# Конфигурация: 1C:Perform
# Версия: 3.2.4.9

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы списка плана видов характеристик "Period-end closing date sections"

	Дано Я открываю основную форму списка плана видов характеристик "РазделыДатЗапретаИзменения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик РазделыДатЗапретаИзменения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик РазделыДатЗапретаИзменения"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка плана видов характеристик "Task addressing objects"

	Дано Я открываю основную форму списка плана видов характеристик "ОбъектыАдресацииЗадач"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ОбъектыАдресацииЗадач"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ОбъектыАдресацииЗадач"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка плана видов характеристик "Additional attributes and information records"

	Дано Я открываю основную форму списка плана видов характеристик "ДополнительныеРеквизитыИСведения"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ДополнительныеРеквизитыИСведения"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ДополнительныеРеквизитыИСведения"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка плана видов характеристик "Dimension types (corporate)"

	Дано Я открываю основную форму списка плана видов характеристик "ВидыСубконтоКорпоративные"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ВидыСубконтоКорпоративные"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана видов характеристик ВидыСубконтоКорпоративные"
	И Я закрываю текущее окно
