public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  word = word.toLowerCase().replace(" ","");
  String result = "";
  for(int i=0;i<word.length();i++)
  {
    if(Character.isLetter(word.charAt(i)))
    {
      result = result + word.substring(i,i+1);
    }
  }
  
  if(result.equals(reverse(result)))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i=0;i<str.length();i++)
    {
      sNew = sNew + str.charAt(str.length()-i-1);
    }
    return sNew;
}
