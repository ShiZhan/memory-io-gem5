#include <iostream>
#include <sstream>
#include <vector>
#include <stdint.h>

int main(int argc, char* argv[]) {
  using namespace std;

  int len = 1024 * 1024 * 64;
  int step = 1;
  if (argc > 2) {
    stringstream(argv[1]) >> len;
    stringstream(argv[2]) >> step;
  }

  vector<uint32_t> arr(len);
  for (int j = 0; j < step; j++)
    for (int i = j; i < len; i += step) arr[i] = arr[i] << 1;

  return 0;
}
