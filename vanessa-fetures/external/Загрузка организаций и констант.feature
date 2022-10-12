﻿#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild

@tree

Функционал: Загрузка организаций и констант

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Перезаполнение константы SSLIMAP значением

	И я перезаполняю константу "SSLIMAP" значением "False"

Сценарий: Перезаполнение константы SSLPOP3 значением

	И я перезаполняю константу "SSLPOP3" значением "False"

Сценарий: Перезаполнение константы SSLSMTP значением

	И я перезаполняю константу "SSLSMTP" значением "False"

Сценарий: Перезаполнение константы АдресPOP3Сервера значением

	И я перезаполняю константу "АдресPOP3Сервера" значением "pop.mail.ru"

Сценарий: Перезаполнение константы АдресSMTPСервера значением

	И я перезаполняю константу "АдресSMTPСервера" значением "smtp.mail.ru"

Сценарий: Перезаполнение константы ВалютаУчета значением

	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"

Сценарий: Перезаполнение константы ВоспроизводитьТекстУведомления значением

	И я перезаполняю константу "ВоспроизводитьТекстУведомления" значением "False"

Сценарий: Перезаполнение константы ИспользоватьIMAP значением

	И я перезаполняю константу "ИспользоватьIMAP" значением "False"

Сценарий: Перезаполнение константы ИмяОтправителяПочтовогоСообщения значением

	И я перезаполняю константу "ИмяОтправителяПочтовогоСообщения" значением "tovarshop@mail.ru"

Сценарий: Перезаполнение константы ИспользоватьAPNS значением

	И я перезаполняю константу "ИспользоватьAPNS" значением "False"

Сценарий: Перезаполнение константы ИспользоватьFCM значением

	И я перезаполняю константу "ИспользоватьFCM" значением "False"

Сценарий: Перезаполнение константы ИспользоватьWNS значением

	И я перезаполняю константу "ИспользоватьWNS" значением "False"

Сценарий: Перезаполнение константы ИспользоватьСетьПередачиДанных значением

	И я перезаполняю константу "ИспользоватьСетьПередачиДанных" значением "False"

Сценарий: Перезаполнение константы ИспользоватьСотовуюСеть значением

	И я перезаполняю константу "ИспользоватьСотовуюСеть" значением "False"

Сценарий: Перезаполнение константы ИспользоватьСпутники значением

	И я перезаполняю константу "ИспользоватьСпутники" значением "False"

Сценарий: Перезаполнение константы КодНовогоУзлаПланаОбмена значением

	И я перезаполняю константу "КодНовогоУзлаПланаОбмена" значением "3"

Сценарий: Перезаполнение константы ОтметкаНаФотоснимкеДата значением

	И я перезаполняю константу "ОтметкаНаФотоснимкеДата" значением "False"

Сценарий: Перезаполнение константы ПарольPOP3 значением

	И я перезаполняю константу "ПарольPOP3" значением "tovar1999"

Сценарий: Перезаполнение константы ПользовательPOP3 значением

	И я перезаполняю константу "ПользовательPOP3" значением "tovarshop"

Сценарий: Перезаполнение константы ПортPOP3 значением

	И я перезаполняю константу "ПортPOP3" значением "110"

Сценарий: Перезаполнение константы ПортSMTP значением

	И я перезаполняю константу "ПортSMTP" значением "25"

Сценарий: Перезаполнение константы РаботаСТорговымОборудованием значением

	И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"

Сценарий: Перезаполнение константы СертификатМобильногоПриложенияIOS значением

	И я перезаполняю константу "СертификатМобильногоПриложенияIOS" значением "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"

Сценарий: Перезаполнение константы ТаймаутИнтернетПочты значением

	И я перезаполняю константу "ТаймаутИнтернетПочты" значением "60"

@ТипШага: Загрузка данных
@Описание: Экспортный сценарий который перезаполняет часть констант
@ПримерИспользования: И загружаю константы

Сценарий: Загружаю константы

	И я перезаполняю константу "ТолькоБесплатные" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"

	И я перезаполняю константу "УчетПоСкладам" значением "True"

Сценарий: Создание объектов для справочника Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

