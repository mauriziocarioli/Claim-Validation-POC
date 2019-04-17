package citrite;

import java.util.Date;
import java.util.ArrayList;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;

/**
 * This class was automatically generated by the data modeler tool.
 */

public final class Helper implements java.io.Serializable {

    static final long serialVersionUID = 1L;
    
    private Helper() {
    }
    
    public static long daysBetweenDates(Date firstDate, Date secondDate) {
        return ChronoUnit.DAYS.between(firstDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate(), secondDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
    }
    
    public static void registerValidation(BREObjectSFDC breObjectSFDC, String orderID, String checkName, String checkType, String checkResult, Boolean header) {
        
        if (breObjectSFDC.getValidations() == null) {
            breObjectSFDC.setValidations(new ArrayList<Validation>());
        }
        
        Validation validation = new Validation();
        
        validation.setOrderID(orderID);
        validation.setCheckName(checkName);
        validation.setCheckType(checkType);
        validation.setCheckResult(checkResult);
        validation.setHeader(header);
        validation.setCheckDate(new Date());
        
        breObjectSFDC.getValidations().add(validation);
        
    }
    
    

}