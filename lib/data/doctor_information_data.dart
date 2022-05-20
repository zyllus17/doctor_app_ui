import 'package:doctor_app_ui/constants/constants.dart';
import 'package:doctor_app_ui/model/model.dart';

List<DoctorInformationModel> doctorInformation = [
  DoctorInformationModel(
    id: '1',
    image: AppImages.doctor1,
    title: AppText.doctor1,
    specialist: AppText.heart,
    hospital: AppText.hospital1,
    star: '50',
  ),
  DoctorInformationModel(
    id: '2',
    image: AppImages.doctor2,
    title: AppText.doctor2,
    specialist: AppText.eye,
    hospital: AppText.hospital2,
    star: '60',
  ),
  DoctorInformationModel(
    id: '3',
    image: AppImages.doctor3,
    title: AppText.doctor3,
    specialist: AppText.ears,
    hospital: AppText.hospital3,
    star: '80',
  ),
  DoctorInformationModel(
    id: '4',
    image: AppImages.doctor4,
    title: AppText.doctor4,
    specialist: AppText.skin,
    hospital: AppText.hospital4,
    star: '20',
  ),
];
