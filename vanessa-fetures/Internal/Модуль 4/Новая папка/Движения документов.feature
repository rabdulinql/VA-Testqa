#language: ru

@tree
@ДвиженияДокументов

Функционал: <описание фичи>

Как Тестировщик я хочу
проверить движение документа Поступления товаров
Чтобы убедиться что документ делает движения по нужным регистрам

Контекст:

	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _0501 подготовительный сценарий (движения документа Поступление товаров)
	Когда экспорт основных данных
	Когда Загрузка документа поступление товаров и услуг
	И я выполняю код встроенного языка на сервере
		|'Документы.PurchaseInvoice.НайтиПоНомеру(1001).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|

Сценарий: _0502 проверка движений документа Поступление товаров по регистру
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице "List" я перехожу к строке
		|'Номер'|
		|'1 001'|
	И я нажимаю на кнопку 'Движения документа'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ "ResultTable" равен:
		| 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                          | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                 | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| ''                                                         | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | 'Attributes'        |
		| ''                                                         | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                   | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                         | '18.10.2022 18:01:55' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Услуга'                  | '7accbea3-eff0-4f58-81fa-9453279a4dd6' | 'Да'                |
		| ''                                                         | '18.10.2022 18:01:55' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Услуга'                  | '7accbea3-eff0-4f58-81fa-9453279a4dd6' | 'Нет'               |
		| ''                                                         | '18.10.2022 18:01:55' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Услуга'                  | '7accbea3-eff0-4f58-81fa-9453279a4dd6' | 'Нет'               |
		| ''                                                         | '18.10.2022 18:01:55' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Услуга'                  | '7accbea3-eff0-4f58-81fa-9453279a4dd6' | 'Нет'               |
		| ''                                                         | '18.10.2022 18:01:55' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Услуга'                  | '7accbea3-eff0-4f58-81fa-9453279a4dd6' | 'Нет'               |
		| ''                                                         | '18.10.2022 18:01:55' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Товар без характеристик' | 'a399ad5d-5b00-4833-91aa-bf29f6a77d18' | 'Да'                |
		| ''                                                         | '18.10.2022 18:01:55' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Товар без характеристик' | 'a399ad5d-5b00-4833-91aa-bf29f6a77d18' | 'Нет'               |
		| ''                                                         | '18.10.2022 18:01:55' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Товар без характеристик' | 'a399ad5d-5b00-4833-91aa-bf29f6a77d18' | 'Нет'               |
		| ''                                                         | '18.10.2022 18:01:55' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Товар без характеристик' | 'a399ad5d-5b00-4833-91aa-bf29f6a77d18' | 'Нет'               |
		| ''                                                         | '18.10.2022 18:01:55' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | 'Товар без характеристик' | 'a399ad5d-5b00-4833-91aa-bf29f6a77d18' | 'Нет'               |
	
	И я закрываю все окна клиентского приложения

Сценарий: _0502 проверка движений документа Поступление товаров по регистру
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице "List" я перехожу к строке
		|'Номер'|
		|'1 001'|
	И я нажимаю на кнопку 'Движения документа'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1021 Взаиморасчеты с поставщиками'
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ "ResultTable" содержит строки по шаблону:
		| 'Поступление товаров и услуг 1 001 от 18.10.2022 18:01:55' | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Движения документа по регистрам'                          | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Регистр  "R1021 Взаиморасчеты с поставщиками"'            | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| ''                                                         | 'Record type' | 'Period'              | 'Resources' | 'Dimensions'             | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | 'Attributes'        | ''                             |
		| ''                                                         | ''            | ''                    | 'Сумма'     | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Контрагент'  | 'Партнер'     | 'Соглашение'                 | 'Документ основание' | 'Отложенный расчет' | 'Закрытие авансов поставщиков' |
		| ''                                                         | 'Приход'      | '*'                   | ''          | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Да'                | ''                             |
		| ''                                                         | 'Приход'      | '18.10.2022 18:01:55' | '343,6'     | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '18.10.2022 18:01:55' | '400'       | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '18.10.2022 18:01:55' | '400'       | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '18.10.2022 18:01:55' | '400'       | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
	
	И я закрываю все окна клиентского приложения
