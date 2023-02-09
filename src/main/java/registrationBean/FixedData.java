package registrationBean;

public class FixedData {
    String positionTable[] = { "Chairman", "Member", "First Secretary", "Second Secretary",
            "Systems Manager", "Senior System Analyst", "System Analyst", "Programmer","Assistant Programmer"};

    public String[] getPositionTable() {
        return positionTable;
    }
    public String getPositionTable(int a) {
        return positionTable[a];
    }
}
