package exercicio02.aplicatition;

import exercicio02.entities.Account;

import java.util.Locale;
import java.util.Scanner;

public class Program {
    public static void main(String[] args) {
        Locale.setDefault(Locale.US);
        Scanner sc = new Scanner(System.in);
        //instance object the type account
        Account acount;

        System.out.print("Enter account number:");
        int number = sc.nextInt();//Instance variable temporary

        System.out.println("Enter account holder:");
        sc.nextLine();

        String holder = sc.nextLine();
        System.out.print("This there an initial deposit (y/n)?");
        char response = sc.next().charAt(0);

        //Checking deposit the user
        if (response == 'y') {
            System.out.println("Enter initial deposit value: ");
            double initialDeposit = sc.nextDouble();
            acount = new Account(number, holder,initialDeposit); // Using overloading with three arguments
        }else {
            acount = new Account(number,holder); // Using overloading with two arguments
        }
        // Output for user
        System.out.println();
        System.out.println("Account data: ");
        System.out.println(acount);

        // Update account the user for deposit
        System.out.println();
        System.out.print("Enter a deposit value : ");
        double depositValue = sc.nextDouble();
        acount.deposit(depositValue);
        System.out.println("Update account data:");
        System.out.println(acount);

        // Update account the user for withdraw
        System.out.println();
        System.out.println("Enter withdraw in account:");
        double withDrawValue = sc.nextDouble();
        System.out.println("Update account data: ");
        acount.withDraw(withDrawValue);
        System.out.println(acount);


        sc.close();
    }
}
