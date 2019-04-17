#[when]Days between {firstDate} and {secondDate} are greater than {n} =  Helper( daysBetweenDates({firstDate}, {secondDate}) > {n}  )
[when]Days between {firstDate} and {secondDate} are greater than {n} = BREObjectSFDC({firstDate} : request.order.orderHeader.order_Creation_Date, 
{secondDate} : request.originalOrder.creation_Date, 
ChronoUnit.DAYS.between({firstDate}.toInstant().atZone(ZoneId.systemDefault()).toLocalDate(), {secondDate}.toInstant().atZone(ZoneId.systemDefault()).toLocalDate()) > {n})

#[then]Register Validation with {bre} for {orderId} as "{name}" "{type}" "{result}" at {header} = registerValidation({bre}, {orderId}, "{name}", "{type}", "{result}", {header});
