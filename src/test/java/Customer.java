public class Customer {
    public String FirstName;
    public String LastName;
    public String Purpose;
    public Integer YearsResided;
    String status;

    public String validate() {
        System.out.println(FirstName.length());
        if (FirstName.length() < 1 || FirstName.length() > 50) {
            status = "Invalid First Name";
        } else {
            status = "Valid";
        }

        return status;
    }
}
