public class AccountController {
    public static List<Account> insertAccounts(List<Account> accountToInsert) {
        insert accountToInsert;
        return accountToInsert;
    }
    
    public static Account insertAccounts(Account accountToInsert) {
        insert accountToInsert;
        return accountToInsert;
    }
    
    public static List<Account> getAllAccounts() {
        List<Account> accounts = [SELECT Name, Phone FROM Account];
        return accounts;
    }
    
    public static void printAllAccounts() {
        List<Account> accounts = getAllAccounts();
        for(Account account : accounts){
            System.debug('Account Name: '+account.Name+', Account Phone: '+account.Phone);
        }
    }
    
    public static Integer getAccountSize() {
    	List<Account> accounts = getAllAccounts();
        return accounts.size();
    }
}