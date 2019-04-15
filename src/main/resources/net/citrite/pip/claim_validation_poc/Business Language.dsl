[when]Days between {firstDate} and {secondDate} are greater than {n} =  Helper( daysBetweenDates({firstDate}, {secondDate}) > {n}  )

#[then]Register Validation with {bre} for {orderId} as "{name}" "{type}" "{result}" at {header} = Helper.registerValidation({bre}, {orderId}, "{name}", "{type}", "{result}", {header});

#[then]Register Validation with {bre} for {orderId} as "{name}" "{type}" "{result}" at {header} = modify( {bre} ){ registerValidation({orderId}, "{name}", "{type}", "{result}", {header}) }

[then]Register Validation with {bre} for {orderId} as "{name}" "{type}" "{result}" at {header} = {bre}.registerValidation({orderId}, "{name}", "{type}", "{result}", {header});