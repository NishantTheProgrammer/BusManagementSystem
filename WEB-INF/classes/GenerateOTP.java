import java.util.*;
public class GenerateOTP
{
    public static String get()
    {
        Random rand= new Random();
        String otp= new String();
        for(int i=0; i<6; i++)
            otp+=Integer.toString(rand.nextInt(10));
        return(otp);
    }
}