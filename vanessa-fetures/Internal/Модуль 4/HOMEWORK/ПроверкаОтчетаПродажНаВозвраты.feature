#language: ru

@tree

Функционал: Проверка отчета продаж на возвраты

Как Менеджер я хочу
узнать сколько было возвратов
чтобы сверить документы

Контекст:

Дано Я открыл новый сеанс TestClient или подключил уже существующий


Сценарий: Проверка отчета продаж на возвраты

Дано Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"
Когда открылось окно 'D2001 Продажи'
И я нажимаю на кнопку с именем 'FormChangeVariant'
И я перехожу к закладке с именем "FilterPage"
И в таблице "SettingsComposerSettingsFilter" я нажимаю на кнопку с именем 'SettingsComposerSettingsFilterUncheckAll'
И в таблице "SettingsComposerSettingsFilter" я нажимаю на кнопку с именем 'SettingsComposerSettingsFilterAddFilterItem'
И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterLeftValue" я выбираю по строке 'Количество'
И я перехожу к следующему реквизиту
И в таблице "SettingsComposerSettingsFilter" я нажимаю кнопку выбора у реквизита с именем "SettingsComposerSettingsFilterComparisonType"
И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterComparisonType" я выбираю по строке 'меньше'
И я перехожу к следующему реквизиту
И в таблице "SettingsComposerSettingsFilter" в поле с именем 'SettingsComposerSettingsFilterRightValue' я ввожу текст '0,000'
И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'FormEndEdit'
И я нажимаю на кнопку с именем 'FormGenerate'
Дано Табличный документ "Result" равен макету "ИнформацияПоВозвратам1" по шаблону