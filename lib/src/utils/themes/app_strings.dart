abstract final class AppStrings {
  // Сервис
  static const String logo = 'TextileView';
  static const String headline =
      'Определение характеристик текстильного материала';
  static const String determineViewHeadline = 'Определение характеристик';
  static const String determineViewSubline =
      'Нажмите на карточки, чтобы выбрать';
  static const String logIn = 'Войти';
  static const String loggedOut = 'Сначала войдите в аккаунт';
  static const String logError = 'Неизвестная ошибка';
  static const String pickImage = 'Выбрать картинку';
  static const String pickNewImage = 'Выбрать новую картинку';
  static const String getResults = 'Получить результаты';
  static const String signUp = 'Зарегистрироваться';
  static const String emailLabel = 'Эл. почта';
  static const String passwordLabel = 'Пароль';
  static const String emptyEmail = 'Введите почту';
  static const String emptyPassword = 'Введите пароль';
  static const String invalidEmail = 'Неверный формат почты';
  static const String invalidPassword = 'Неверный формат пароля';
  static const String authErrorSnack = 'Ошибка авторизации';
  static const String loginSuccessSnack = 'Вы успешно вошли в систему';

  // Главная

  static const String welcomeHeadline =
      'Для получения услуги подбора текстильных материалов авторизуйтесь';
  static const String card1Headline =
      'Услуги поставщикам текстильных материалов';
  static const String card2Headline =
      'Услуги производителям текстильных материалов';
  static const String card3Headline = 'Дополнительные услуги';
  static const List<String> card1Chips = [
    'производители текстильных и швейных изделий',
    'подтверждение соответствия продукции',
    'логистика',
    'сведения о материалах',
  ];
  static const List<String> card2Chips = [
    'поставщики',
    'логистика',
    'распродажа',
    'подтверждение соответствия продукции',
    'сведения о материалах',
    'выбор материалов',
  ];
  static const List<String> card3Chips = [
    'модная страничка',
    'курс валют',
    'калькулятор онлайн',
    'финансы',
    'отзывы',
    'рейтинг транспортных компаний',
    'рейтинг поставщиков',
    'брак',
    'возврат',
  ];

  // nav page

  static const String navServicesLabel = 'Сервисы и услуги';
  static const String navInfoLabel = 'Информация';
  static const String navDealsLabel = 'Спецпредложения';
  static const String navProfileLabel = 'Личный кабинет';
  static const String navHelpLabel = 'Справка';
  static const String navTranslateLabel = 'Язык';
  static const String popupSearchLabel = 'Поиск по фильтрам';
  static const String popupServiceLabel = 'Искусственный интеллект';

  // signup page

  static const String signUpHeadline = 'Регистрация нового пользователя';
  static const String doHaveAccountQuestion = 'Уже есть аккаунт?';
  static const String amProducer = 'Являюсь производителем материалов';
  static const String amSupplier = 'Являюсь поставщиком материалов';
  static const String amIndividual = 'Являюсь физическим лицом';
  static const String amCompany = 'Являюсь представителем компании';
  static const String labelIndividual = 'ФИО';
  static const String labelCompany = 'Название комании';
  static const String signupSubline =
      'Подробную информацию о себе/своей компании, интересующих и предоставляемых услугах, качестве и свойствах вашей продукции Вы сможете заполнить в личном кабинете';

  // login page

  static const String doNotHaveAccountQuestion = 'Нет аккаунта?';
  static const String loginHeadline = 'Вход в систему';

  // profile page

  static const String profileHeadline = 'Личный кабинет';
  static const String profileFilledLabel = 'Профиль заполнен на';
  static const String fakeProfileTextFieldLabel = 'Сайт компании';
  static const String profileSave = 'Сохранить';

  // search page

  static const String searchHeadline = 'Поиск через систему фильтров';
  static const String searchSelectFilters = 'Выберите фильтры';
  static const String searchSelectActions = 'Выберите необходимые действия';
  static const String searchInputData = 'Введите входные данные';
  static const List<String> searchFilters = [
    'Назначение материала',
    'Вид материала',
    'Цвет, принт',
    'Отделка',
    'Переплетение',
    'Поверхностная плотность',
    'Толщина',
  ];
  static const String searchFiltersFieldHint = 'Введите фильтры';
  static const String searchOption1 =
      'Вывести материалы под заданные параметры (будут выведены фотографии и описание)';
  static const String searchOption2 = 'Осуществить выбор подходящего материала';
  static const String searchOption3 = 'Показать связь с поставщиком';
  static const String searchButtonLabel = 'Поиск';
}
