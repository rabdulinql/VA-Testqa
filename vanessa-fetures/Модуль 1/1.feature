﻿#language: ru

@tree

Функционал: Проверка суммы заказа

Как менеджера по продажам я хочу
Создание заказа с контролем суммы
Чтобы продать товар

Контекст: 
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание заказа
* Заполнение шапки
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Обувь"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюДобавить' на элементе формы с именем "Товары"
* Заполнение ТЧ
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000027' | 'Ряженка'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '23'
	И в таблице "Товары" я завершаю редактирование строки
	И я запоминаю значение поля "ТоварыКоличество" таблицы "Товары" как "КТовар1"
	И я запоминаю значение поля "ТоварыЦена" таблицы "Товары" как "ЦТовар1"
	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюДобавить' на элементе формы с именем "Товары"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000022' | 'Veko67NE'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И я запоминаю значение поля "ТоварыКоличество" таблицы "Товары" как "КТовар2"
	И я запоминаю значение поля "ТоварыЦена" таблицы "Товары" как "ЦТовар2"
	И Я запоминаю значение выражения '$Цтовар1$*$Ктовар1$+$Цтовар2$*$Ктовар2$' в переменную "СуммаДокумента"
* Проверка суммы
	Тогда элемент формы с именем "ТоварыИтогСумма" стал равен "$СуммаДокумента$"
* Запись документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд