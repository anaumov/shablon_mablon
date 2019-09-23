MoneyRails.configure do |config|
  config.default_currency = :rub
end

Money.locale_backend = :i18n
