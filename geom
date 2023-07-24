#include <bits/stdc++.h>
using namespace std;
#define ll long long
#define repp(i,a,n) for (ll i = a; i<=n; i++)
#define repo(i,a,n) for (ll i = a; i < n; i++)
#define fi first
#define sec second
#define pb push_back

ll n, x[305], y[305];
bool ada;

int main() {
  cin >> n;
  repo(i,0,n){
    cin >> x[i] >> y[i];
  }
  double ans = 1e18;
//cari luas segitiga minimum dari koordinat yang dikasi
  repo(i,0,n-2) {
    repo(j,i+1,n-1) {
      repo(k,j+1,n) {
        double temp = (x[i]*y[j] + x[j]*y[k] + x[k]*y[i])-(y[i]*x[j] + y[j]*x[k] + y[k]*x[i]);
        double luas = abs(temp)/2.0;
        // knp hrs dipencar temp sm luasny
        if (luas != 0 && luas < ans) {
          ans = luas;
          ada = false;
        }
        else if (luas == ans) ada = true;
      }
    } 
  }
  if (ans == 1e18 || ada == true) cout << "-1.00";
  else cout << fixed << setprecision(2) << ans;
}
