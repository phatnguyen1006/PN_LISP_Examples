
Map(String docid, String text):
  for each word w in text:
    Emit(w, 1);
    
Reduce(String term, Iterator<Int> values):
  int sum = 0;
  for each v in values:
    sum += v;
  Emit(term, sum);
