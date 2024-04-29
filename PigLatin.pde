public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  
  for (int i = 0; i < sWord.length(); i++) {
    char letter = sWord.charAt(i);
    if (letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u') {
      return i;
    }
  } 
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  int first = findFirstVowel(sWord);
  
  if(first == -1)
  {
    return sWord + "ay";
  }
  else if (first == 0) {
    return sWord + "way";
  }
  else if (first > 0 && sWord.charAt(0) == 'q') {
    return sWord.substring(2,sWord.length()) + "quway";
  }
  else if (first > 0) {
    return sWord.substring(first,sWord.length()) + sWord.substring(0,first) + "ay";
  }
  else {
    return "ERROR!";
  }
}
