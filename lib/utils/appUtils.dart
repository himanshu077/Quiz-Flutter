List<T> getRandomSublist<T>(List<T> originalList, int length) {
  originalList.shuffle();
  if (originalList.length < length) {
    return originalList;
  }

  List<T> sublist = originalList.sublist(0, length);

  return sublist;
}
