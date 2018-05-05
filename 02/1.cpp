#include <iostream>
using namespace std;

int main()
{
  int s, n, i;
  cout << "Proszę podać liczbę naturalną n : ";
  cin >> n;
  i = 1;
  s = 1;
  
  while (i < n)
  {
    i++;
    s *= i;
  }
  cout << "Silnia: " << s << endl;
}
