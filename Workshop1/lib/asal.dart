void main() {
  asalSayilariYazdir(100);

}

bool asalSayiMi(int value) {
  for(int i = 2; i * i <= value; i++) {
    if (value % i == 0) {
      return false;
    }
  }
  return true;
}


void asalSayilariYazdir(int n) {
  for(int i = 2; i<=n; i++) {
    if (asalSayiMi(i)) {
      print(i);
    }
  }
}