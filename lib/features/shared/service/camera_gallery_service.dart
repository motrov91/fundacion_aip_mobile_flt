
abstract class CameraGalleryService {

  //* Path fisico donde se alojo la fotografia 
  Future<String?> takePhoto();
  Future<String?> selectPhoto();
}