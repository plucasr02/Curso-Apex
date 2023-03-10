public class Company {
    public string companyName;
    public string ceo;
    public integer employeeCount;
    public long revenue;
    
    private list<Client> costumers = new list<Client>();
    
    public void addNewCustomer(string clientName, string website, string email, long phone){
        Client customer = new Client(clientName, website, email, phone);
        costumers.add(customer);
    }
    
    public void getAllCostumers(){
        for(Client costumer:costumers){
            system.debug('Costumer name: '+costumer.clientName+', Website: '+costumer.website+', Phone: '+costumer.phone);
        }
    }
    
    private class Client{
        public string clientName;
        public string website;
        public string email;
        public long phone;
        
        Client(string clientName, string website, string email, long phone){
            this.clientName = clientName;
            this.website = website;
            this.email = email;
            this.phone = phone;
        }
    }

}

/* no debug
Company sfdcfacts = new Company();

sfdcfacts.companyName = 'SFDCFacts Academy';
sfdcfacts.ceo = 'Manish Nelson';
sfdcfacts.employeeCount = 6;
sfdcfacts.revenue = 1000000;

sfdcfacts.addNewCustomer('CLR Infotech', 'clrinfotech.com', 'clrinfotech@gmail.com', 7778889990L);
sfdcfacts.addNewCustomer('Forcepanda', 'forcepanda.com', 'forcepanda@gmail.com', 88464868L);
sfdcfacts.addNewCustomer('Udemy', 'udemy.com', 'udemy@gmail.com', 568765341684L);

sfdcfacts.getAllCostumers();*/