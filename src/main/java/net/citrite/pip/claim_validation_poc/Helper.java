package net.citrite.pip.claim_validation_poc;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

/**
 * This class was automatically generated by the data modeler tool.
 */

public final class Helper implements java.io.Serializable {

    static final long serialVersionUID = 1L;
    
    private Helper() {
    }
    
    public static long daysBetweenDates(LocalDate firstDate, LocalDate secondDate) {
        return ChronoUnit.DAYS.between(firstDate, secondDate);
    }

}