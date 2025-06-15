class DecoderFunction {
  DecoderFunction._();
  static List<T> jsonToList<T>(List<dynamic> jsonList,
      T Function(Map<String, dynamic> jsonObject) decoder) {
    return jsonList.map<T>((t) => decoder(t)).toList();
  }
}
