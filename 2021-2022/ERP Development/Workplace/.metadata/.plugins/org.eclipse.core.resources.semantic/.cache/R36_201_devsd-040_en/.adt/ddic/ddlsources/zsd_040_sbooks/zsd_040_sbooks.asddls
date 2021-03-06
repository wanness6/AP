@AbapCatalog.sqlViewName: 'ZSD040SBOOKS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface view Flights Bookings'
define view ZSD_040_SBOOKS as select from sbook {

   
    key carrid as Carrier_id,
    key connid as Connection_id,
    key fldate as Flight_date,
    key bookid as Booking_id,
    customid as Customer_id,
    custtype as Customer_type,
    smoker as Smoker,
    luggweight as Luggage_weight,
    wunit as Weight_unit,
    invoice as Invoice_flag,
    class as Flight_Class,
    forcuram as Foreign_currency_price,
    forcurkey as Payment_currency,
    loccuram as currency_price,
    loccurkey as Local_currency,
    order_date as Order_Date,
    counter as Counter,
    agencynum as Agency_number,
    cancelled as Cancelled_flag,
    reserved as Reserved_flag,
    passname as Passenger_name,
    passform as Passenger_Adres,
    passbirth as Passenger_birth
    
}
