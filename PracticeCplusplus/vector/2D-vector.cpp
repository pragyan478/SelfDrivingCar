#include <iostream>
#include <vector>

using namespace std;
int main(){
  vector < vector<int> > twodvector;
  vector <int> SingleRow (3,2);
  for (int i =0; i<5 ; i++){
    twodvector.push_back(SingleRow);
  }
  //Another way to set up a vector
  vector < vector <int> > new_way (5, vector <int> (3, 2));
  
  for (int i=0 ; i<twodvector.size() ; i++ ){
    for (int j=0 ; j<twodvector[0].size() ; j++)
      cout << twodvector[i][j] << " ";
    cout << endl;
  }
  



  return 0;
}
