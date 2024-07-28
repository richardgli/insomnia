import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.BufferedReader;
int index = 0;
boolean savedData = false;

//checks whether the username inputted by the player is preexisting or not and returns true or false accordingly
boolean checkUsername() {
  String[] lines = loadStrings("userdata.txt");
  if (lines != null) {
    while (index < lines.length) {
      String[] pieces = split(lines[index], ' ');
      System.out.println(username + " " + pieces[0] + " " + username.equals(pieces[0]));
      System.out.println(index);
      if (username.equals(pieces[0])) {
        return true;
      }
      index++;
    }
    return false;
  } else {
    return false;
  }
}
/*
void saveData() {
  try {
    String[] data = {username, strLightsAchievement, strBeatGame, strHideAchievement};
    BufferedReader reader = new BufferedReader(new FileReader("userdata.txt"));
    BufferedWriter out = new BufferedWriter(new FileWriter("userdata_new.txt"));
    String line;
    while ((line = reader.readLine()) != null) {
      System.out.println(line = reader.readLine());
      System.out.println(line.contains(username));
      if (line.contains(username)) {
        String[] parts = line.split("\\s+"); // Split line into parts
        String name = parts[0];
        String achievement1 = parts[1];
        String achievement2 = parts[2];
        String achievement3 = parts[3];
        line = name + " " + achievement1 + " " + achievement2 + " " + achievement3; // Modify the line with the new balance
        System.out.println(line);
      }
      out.write(data[0] + " " + data[1] + " " + data[2] + " " + data[3]); // Write the line to the new file
      out.newLine();   // Add a newline character
    }
    out.close();
    reader.close();
    new File("userdata_new.txt").renameTo(new File("userdata.txt"));
    /*String[] lines = loadStrings("userdata.txt");
    File dataFile = new File(dataPath("userdata.txt"));
    System.out.println(lines[0]);
    while (index < lines.length) {
      String[] pieces = split(lines[index], ' ');
      if (username.equals(pieces[0])) {
        PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(dataFile, false)));
        out.println(data[0] + " " + data[1] + " " + data[2] + " " + data[3]);   
        System.out.println(data[0] + " " + data[1] + " " + data[2] + " " + data[3]); 
        out.close();
      }
      index++;
    }
   savedData = true;
   //index = 0;
  } catch(IOException e) {
    e.printStackTrace();
  }
}*/

//if the username has not been entered before, a new username will be created
void signin() {
  try {
    String[] data = {username, strLightsAchievement, strBeatGame, strHideAchievement};
    File dataFile = new File(dataPath("userdata.txt")); //create the userdata.txt file inside the data folder
    if (!dataFile.exists()) { //if there is no data file, then one will be created
      dataFile.createNewFile();
    }
    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(dataFile, true))); //append the following data to the file
    out.println(data[0] + " False False False"); 
    out.close();
  } catch(IOException e) {
    e.printStackTrace();
  }
}

//when the entered username is already exists, the achievement values are loaded
void login() {
  String[] lines = loadStrings("userdata.txt");
  while (index < lines.length) {
    String[] pieces = split(lines[index], ' ');
    if (username.equals(pieces[0])) { //checks for the values, and the boolean variables for the achievements change accordingly
      if (pieces[1].equals("True")) {
        lightsAchievement = true;
      } else if (pieces[1].equals("False")) { 
        lightsAchievement = false;
      }
      
      if (pieces[2].equals("True")) {
        beatGame = true;
      } else if (pieces[2].equals("False")) { 
        beatGame = false;
      }
      
      if (pieces[3].equals("True")) {
        hideAchievement = true;
      } else if (pieces[3].equals("False")) { 
        hideAchievement = false;
      }
    }
    index++;
  }
  index = 0;
}
