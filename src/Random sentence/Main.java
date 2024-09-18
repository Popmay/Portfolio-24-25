
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;


public class Main{
    
        
    public static void main(String[] args) throws IOException {

         Scanner myObj = new Scanner(System.in);  // Create a Scanner object
    System.out.println("Enter how many sentences you want");

    int amount = Integer.parseInt(myObj.nextLine());  // Read user input

        // Creates a FileWriter
        FileWriter file = new FileWriter("Output.txt");
  
        // Creates a BufferedWriter
        BufferedWriter output = new BufferedWriter(file);

      
    for (int i = 0; i <= amount; i++) {
        output.newLine();
        output.write(getRandWord("Datasets\\Wordlist-Subject.txt")+" "+getRandWord("Datasets\\Wordlist-Adverbs-All.txt")+" "+getRandWord("Datasets\\Wordlist-Verbs-All.txt")+" "+getRandWord("Datasets\\Wordlist-Adjectives-All.txt")+" "+getRandWord("Datasets\\Wordlist-Nouns-All.txt"));
    }
    
    output.close();
    myObj.close();

    }
    
    public static String getRandWord(String filename) throws FileNotFoundException
        {
            File tempFile = new File(filename);
                Scanner scan = new Scanner(tempFile);
                ArrayList<String> list = new ArrayList<>();
                while (scan.hasNext()) {
                    list.add(scan.nextLine());
                }
                int index = (int) (Math.random() * list.size());
                scan.close();
                return(list.get(index));
    };

    }