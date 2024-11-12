Stream<int> streamCounter(int max) async* {
  for (int i = 0; i <= max; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}

void main() async {
  await for (int value in streamCounter(5)) {
    print(value);
  }
}
