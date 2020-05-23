#include <iostream>
#include <string>

using namespace std;

int main() {
    string s;
    getline(cin, s);

    for (int i = 0; i < 26; i++) {
        string t = s;
        for (int j = 0; j < static_cast<int>(t.size()); j++) {
            if ('A' <= s[j] && s[j] <= 'Z') {
                t[j] = (i + s[j] - 'A') % 26 + 'A';
            } else if ('a' <= s[j] && s[j] <= 'z') {
                t[j] = (i + s[j] - 'a') % 26 + 'a';
            }
        }

        cout << t << endl;
    }
}
