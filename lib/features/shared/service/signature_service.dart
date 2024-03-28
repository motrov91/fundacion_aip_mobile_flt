
abstract class SignatureService {
  Future<void> saveSignature(List<int> signatureData);
  Future<List<int>> loadSignature();
}