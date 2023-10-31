void main() {

  print(faktoriyel(0));
}


int faktoriyel(int f) {
  if (f == 0) {
    return 1;
  } return f * faktoriyel(f-1);
}