[when]Days between {firstDate} and {secondDate} are greater than {n} =  Helper( daysBetweenDates({firstDate}, {secondDate}) > {n}  )

[then]Register Validation with {bre} for {orderId} as {name} {type} {result} as {header} = h.registerValidation({bre}, {orderId}, {name}, {type}, String {result}, Boolean{header})