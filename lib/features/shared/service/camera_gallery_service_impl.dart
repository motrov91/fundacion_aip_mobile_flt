
import 'package:fundacion_aip_mobile/features/shared/service/camera_gallery_service.dart';
import 'package:image_picker/image_picker.dart';

class CameraGalleryServiceImpl extends CameraGalleryService{

  final ImagePicker _picker = ImagePicker();

  @override
  Future<String?> selectPhoto() async {
    // Capture a photo.
    final XFile? photo = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if( photo == null ) return null;

    print('Tenemos una imagen ${photo.path}');

    return photo.path;
  }

  @override
  Future<String?> takePhoto() async{
    // Capture a photo.
    final XFile? photo = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
      preferredCameraDevice: CameraDevice.rear
    );

    if( photo == null ) return null;

    print('Tenemos una imagen ${photo.path}');

    return photo.path;
  }


}