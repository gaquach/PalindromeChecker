public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])== true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  String word3 = noSpaces(word2);
  String word4 = noCapitals(word3);
  if(word4.equals(reverse(word4))){
    return true;
  }
  else{
    return false;
  }
}
public String reverse(String str)
{
  String bob = "";
  for(int i = str.length()-1; i >= 0; i--)
  {
    bob = bob +str.substring(i, i+1);
  }
  bob = bob.toLowerCase();
  return bob; 
}
public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
}
public String noSpaces(String stWord){
  String bob = "";
  for(int i = 0; i <= stWord.length()-1; i++){
    if(stWord.substring(i, i+1).equals(" ")){
      bob = bob;
    } else{
      bob = bob + stWord.substring(i, i+1);
    }
  }
  return bob; 
}
public String noCapitals(String sttWord){
  return sttWord.toLowerCase();
}

