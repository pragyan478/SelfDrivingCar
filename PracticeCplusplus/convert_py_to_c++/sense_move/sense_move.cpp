#include <iostream>
#include <vector>
#include <string>
#include <numeric>

using namespace std;
vector <float> sense(vector<float> p, string str1);
vector <float> move (vector<float> p, int U);

static const string array1[] = {"green","red","red","green","green"};
static const string array2[] = {"red","green"};
static const int array3[] = {1, 1};
vector < string > world (array1, array1+sizeof(array1)/sizeof(array1[0]));
vector < string > measure (array2, array2+sizeof(array2)/sizeof(array2[0]));
vector < int > motions (array3, array3+sizeof(array3)/sizeof(array3[0]));
vector < float > p (5, 0.2);

float pHit = 0.6;
float pMiss = 0.2;
float pExact = 0.8;
float pOvershoot = 0.1;
float pUndershoot = 0.1;

int main(){
    int i;

    for (i=0;i<measure.size() ; i++){
        p = sense(p, measure[i]);
        p = move(p, motions[i]);
    }
    
    for (i=0 ; i<p.size() ; i++)
        cout << p[i] << "  ";
    cout << endl;
    return 0;
}


vector <float> sense(vector<float> p, string str1)
{
    int i;
    int hit = 0;
    vector <float> q (p.size());
    for(i=0 ; i<p.size() ; i++){
        if(world[i].compare(str1) == 0)
            hit = 1;
        else
            hit = 0;
        q[i] = p[i] * (hit*pHit + (1-hit)*pMiss);
    }
    float sum = std::accumulate(q.begin(), q.end(), 0.0);
    //cout << sum << "\n\n\n";
    for(i=0 ; i<q.size() ; i++)
        q[i] /= sum;
    
    return q;
}


vector <float> move (vector<float> p, int U)
{
    vector <float> q (p.size());
    for (int i = 0 ; i<p.size() ; i++){ 
        float s = pExact * p[(i-U+p.size())%p.size()];
        s += pOvershoot * p[(i-U-1+p.size())%p.size()];
        s += pUndershoot * p[(i-U+1+p.size())%p.size()];
        q[i] = s;
    }

    return q;
}

