﻿#language: ru

@tree

Функционал: Создание заказа с контролем суммы количества позиций

Как Менеджер я хочу
создать заказ
чтобы сформировать предложение для потребителя

Контекст:

Дано Я открыл новый сеанс TestClient или подключил уже существующий


Сценарий: Создание заказа с контролем суммы количества позиций
 И _001 Заполнение шапки заказа
 И _002  Заполнение ТЧ товары и проверка