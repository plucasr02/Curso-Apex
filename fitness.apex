public class Fitness {
	
    public decimal calculateBMI(decimal Weigth, decimal Heigth){
        if(heigth <= 0 || Weigth < 0){
            return -1;
        } else {
            decimal imc = Weigth / (Heigth * Heigth);
            return imc;
            }
    }
    
    public decimal calculatePace(decimal distanceInKm, decimal timeInMinute){
        if(distanceInKm < 0 || timeInMinute <= 0){
            return -1;
        } else {
            decimal hr = timeInMinute/60;
            decimal pace = distanceInKm/hr;
            return pace;
        }
    }
}