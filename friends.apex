public class Friends {
    
    final integer ONLY_ONE_SLICE = 8;
    final integer UPTO_THREE_SLICES = 7;
    final integer MORE_THAN_THREE_SLICES = 6;
    
    public integer getBill(integer numberOfSlices){
        integer billAmount = numberOfSlices == 1 ? ONLY_ONE_SLICE*numberOfSlices :
        					(numberOfSlices <= 3 ? UPTO_THREE_SLICES*numberOfSlices :
                            	MORE_THAN_THREE_SLICES*numberOfSlices);
        return billAmount;                        
    }
}