package api;

import java.util.Date;

public class globals {
    //From Ouside network
//    public static final String ivasApiUrl = "http://vat.gov.bd/sap/opu/odata/sap/ZOD_ERP_INTERGRATION_SRV/";

    //iVAS network
    public static final String ivasApiUrl = "http://ivaspgapp1.vat.gov.bd:8050/sap/opu/odata/sap/ZOD_ERP_INTERGRATION_SRV/";

    public static Date StartDateGlobal = new Date();
    public static  Date EndDateGlobal = new Date();

    private static boolean stEndDateset;

    public static void setStartDateGlobal(Date dt1) {
          StartDateGlobal = dt1;
    }
    public static void setEndDateGlobal(Date dt2){
        EndDateGlobal = dt2;
    }
    public static void setstEndDate(boolean a){
        stEndDateset = a;
    }
    public static boolean isStEndDateSet(){
        return stEndDateset;
    }

}
