package aplicaao.edulab.exercicio;

import java.util.Locale;
import java.util.Scanner;

import static aplicaao.edulab.exercicio.Calculator.Principal.PI;

public class Main {
    public static void main(String[] args) {

        Locale.setDefault(Locale.US);
        Scanner in = new Scanner(System.in);

        Calculator calc = new Calculator();

        System.out.println("Enter radius:");
        double radius = in.nextDouble();

        double c = calc.circumferences(radius);

        double v = calc.volume(radius);

        //noinspection MalformedFormatString
        System.out.printf("Circumferences  %.2f%n" + c);
        //noinspection MalformedFormatString
        System.out.printf("Volume is : %.2f%n" + v);
        //noinspection MalformedFormatString
        System.out.printf("PI value is : %.2f%n"+ PI);


    }
}
