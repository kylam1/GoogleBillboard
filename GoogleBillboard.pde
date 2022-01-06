public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{
  for(int n = 1; n < e.length()-10; n++) {
    String str = e.substring(0+n, 10+n);
    double digits = Double.parseDouble(str);
    if(isPrime(digits)) {
      System.out.print(digits);
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double num){
  if(num <= 1)
    return false;
  for(int i = 2; i <= Math.sqrt(num); i++) {
    if(num % i == 0)
      return false;
  }
  return true;
}
