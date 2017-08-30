﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@tree

Функционал: Частичная загрузка фич по тегам, когда указаны фильтры по тегам исключения и тегам фильтрам
	Как Разработчик
	Я Хочу чтобы была возможность указать список тегов фич для загрузки и список тегов фич для пропуска
	Чтобы я мог фильтровать нужные мне фичи
 
Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	
Сценарий: Загрузка фичи с секцией Контекст, когда указаны теги фильтры
	Когда Я открываю VanessaBehavior в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "Support\Templates"
	
	И укажем фильтр исключение
			И     я нажимаю кнопку выбора у поля "Тэги для запуска"
			Тогда открылось окно "Список значений"
			И     я нажимаю на кнопку "Добавить"
			И     в таблице "ValueList" в поле "Значение" я ввожу текст "TestTagFilter1"
			И     я нажимаю на кнопку "ОК"

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient		


	Тогда таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                                        |
		| 'Templates'                                                           |
		| 'ФичаДляПроверкиТеговФильтров'                                        |
		| 'Контекст'                                                            |
		| 'Дано: установлена программа для работы со скриншотами InfanView'     |
		| 'Добавление красной подсветки'                                        |
		| 'Когда я запускаю TestClient в режиме формирования HTML документации' |




	
	
	
Сценарий: Загрузка фич когда указаны теги фильтры и теги исключения
	Когда Я открываю VanessaBehavior в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к каталогу фич "Drafts"
	
	И укажем фильтр исключение
			И     я нажимаю кнопку выбора у поля "Список исключаемых тэгов"
			Тогда открылось окно "Список значений"
			И     я нажимаю на кнопку "Добавить"
			И     в таблице "ValueList" в поле "Значение" я ввожу текст "IgnoreOnCIMainBuild"
			И     я нажимаю на кнопку "ОК"

			
	И укажем фильтр отбр
			И     я нажимаю кнопку выбора у поля "Тэги для запуска"
			Тогда открылось окно "Список значений"
			И     я нажимаю на кнопку "Добавить"
			И     в таблице "ValueList" в поле "Значение" я ввожу текст "ПростоЧтобыБылоОдноЗначение"
			И     в таблице "ValueList" я завершаю редактирование строки
			И     я нажимаю на кнопку "ОК"
			
			
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient		
	
	Тогда таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                         |
		| 'Drafts'                                               |
		| 'Поддержкаi18n'                                        |
		| 'Контекст'                                             |
		| 'Дано:  имеется stack-commons библиотека'              |
		| 'И имеются проверочные feature файлы на разных языках' |
		| 'ПроверкаСтороннихУтилит'                              |
		| 'Контекст'                                             |
		| 'Дано:  Открыта обработка vanessa-behavior'            |
		| 'и доступны утилиты git, sed и grep в переменной PATH' |
	