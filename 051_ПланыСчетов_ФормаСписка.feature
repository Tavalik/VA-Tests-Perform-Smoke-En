﻿
#language: ru

@tree

Функциональность: Дымовые тесты - ПланыСчетов - ФормаСписка
# Конфигурация: 1C:Perform
# Версия: 3.2.3.50

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы списка плана счетов "Chart of accounts IFRS"

	Дано Я открываю основную форму списка плана счетов "МСФО"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана счетов МСФО"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть форму списка плана счетов МСФО"
	И Я закрываю текущее окно
