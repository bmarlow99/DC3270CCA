public class Customer {
    public String FirstName;
    public String LastName;
    public String Purpose;
    public Integer YearsResided;
    String status;

    public String submit() {
        if (FirstName.length() < 1 || FirstName.length() > 50) {
            status = "Invalid First Name";
        } else if (LastName.length() < 1 || LastName.length() > 50) {
            status = "Invalid Last Name";
        } else if (!Purpose.equals("L") && !Purpose.equals("E") && !Purpose.equals("S") && !Purpose.equals("I")) {
            status = "Invalid Purpose";
        } else if (YearsResided <= 0 || YearsResided > 999) {
            status = "Invalid Years Resided";
        } else {
            status = "Valid";
        }

        return status;
    }
}