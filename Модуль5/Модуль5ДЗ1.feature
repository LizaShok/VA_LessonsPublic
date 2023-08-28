#language: ru

@tree

Функционал: Создание элементов справочника "Номенклатура"

Как <тестировщик> я хочу
10 элементов справочника Номенклатура 
чтобы сдать ДЗ модуля 5   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание элементов справочника Номенклатура
	И В командном интерфейсе я выбираю 'Inventory' 'Items'
	И Я запоминаю значение выражения '1' в переменную "Шаг"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Номенк." + $Шаг$' в переменную "Номенклатура"
		И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'ItemType'                                                             | 'Unit'                                                             | 'MainPricture'                          | 'Vendor'                                                              | 'ItemID' | 'PackageUnit' | 'ControlCodeString' | 'CheckCodeString' | 'Description_en' | 'Description_hash' | 'Description_ru'           | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' | 'LocalFullDescription' | 'ForeignFullDescription' | 'SourceNodeID' |
		| '{"e1cib/data/Catalog.Items?ref=" +StrReplace(New UUID, "-", "")}' | 'False'        | '{"e1cib/data/Catalog.ItemTypes?ref=" +StrReplace(New UUID, "-", "")}' | '{"e1cib/data/Catalog.Units?ref=" +StrReplace(New UUID, "-", "")}' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | '{"e1cib/data/Catalog.Partners?ref=" +StrReplace(New UUID, "-", "")}' | '58791'  | ''            | 'False'             | 'False'           | $Номенклатура$   | ''                 | 'Товар с характеристиками' | ''               |          |          |          | 0.21     |         | ''                     | ''                       | ''             |
