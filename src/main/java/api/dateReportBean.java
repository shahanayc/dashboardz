package api;

import java.text.SimpleDateFormat;
import java.util.Date;

public class dateReportBean implements java.io.Serializable{
    private Date startDate;
    private Date endDate;

    public dateReportBean() {
    }

    public Date getStartDate(){
        return startDate;
    }
    public void setStartDate(Date d1){
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        System.out.println("\nStart Date::::::::     "+ formatter.format(d1));
        this.startDate = d1;
    }

    public Date getEndDate(){
        return endDate;
    }
    public void setEndDate(Date d2){
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        System.out.println("\nEnd Date::::::::     "+ formatter.format(d2));
        this.endDate = d2;
    }
}
