﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Создание экспортных сценариев для док-та Заказ

Как ученик курса я хочу
создать экспортные сценарий для документа Заказ 

Сценарий:Заполнение шапки документа Заказ
И В командном интерфейсе я выбираю 'Sales - A/R' 'Sales orders'
И я нажимаю на кнопку с именем 'FormCreate'
И я нажимаю кнопку выбора у поля с именем "Partner"
И в таблице "List" я перехожу к строке:
	| 'Description'   | 'Код' |
	| 'Own company 1' | '13'  |
И я нажимаю на кнопку с именем 'FormChoose'
И я нажимаю кнопку выбора у поля с именем "Company"
И в таблице "List" я перехожу к строке:
	| 'Description'   | 'Код' |
	| 'Own company 2' | '3'   |
И я нажимаю на кнопку с именем 'FormChoose'
И я нажимаю кнопку выбора у поля с именем "Store"
И в таблице "List" я перехожу к строке:
	| 'Company'                  | 'Description'                       | 'Код' |
	| 'Shared for all companies' | 'Store 2 (without balance control)' | '2'   |
И я нажимаю на кнопку с именем 'FormChoose'
И я нажимаю на кнопку с именем 'FormWrite'

Сценарий: Тест на проверку расчета поля Количество 
	Тогда таблица "ItemList" содержит строки:
		| 'Quantity' |
		| '2,000'    |
	
//я правильно поняла задание по проверке расчета?