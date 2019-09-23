#= require jquery
#= require jquery_ujs
#= require jquery-ui/widgets/datepicker
#= require bootstrap-sprockets
#= require moment
#= require daterangepicker
#= require best_in_place
#= require best_in_place.jquery-ui

#= require lib/jquery.mask

#= require datepicker_init
#= require angular
#= require angular-sanitize
#= require angular-messages
#= require lodash
#= require app
#= require cable

$ ->
  $.datepicker.setDefaults({
    closeText: 'Закрыть',
    prevText: '',
    currentText: 'Сегодня',
    monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь',
        'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
    monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн',
        'Июл','Авг','Сен','Окт','Ноя','Дек'],
    dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
    dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт'],
    dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
    weekHeader: 'Не',
    dateFormat: 'dd.mm.yy',
    firstDay: 1,
    isRTL: false,
    showMonthAfterYear: false,
    yearSuffix: ''
  })
