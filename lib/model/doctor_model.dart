class Doctor {
  final List<String> name;
  final List<String> image;
  final List<String> designation;
  final List<int> charge;
  final List<double> star;

  Doctor(
      {required this.name,
      required this.image,
      required this.designation,
      required this.charge,
      required this.star});
}

final List<Doctor> doctor = [
  Doctor(
      name: names,
      image: docImages,
      designation: designations,
      charge: charges,
      star: stars)
];
final List<String> colleges = [
  'Dhaka Medical College',
  'Rajshahi Medical College',
  'Salimullah Medical College',
  'Suhrawardy Medical College',
  'Sylhet Medical College',
  'Kushtia Medical College',
  'Mugda Medical College',
  'Zia Medical College',
];

final List<String> names = [
  'Dr. Jenny Young',
  'Dr. Ana Aslam',
  'Dr. Tanisha Khan',
  'Dr. Iva Kerpenter',
  'Dr. Mayme Gomez',
  'Virginia Apgar',
  'Dr. Jack Wolf',
  'Dr. Daniel',
];
final List<String> designations = [
  'Heart Surgeon',
  'Gynecologist', //new
  'Orthopedic',
  'Dentist',
  'Hematologist', //new
  'Heart Surgeon',
  'Cardiologist',
  'Heart Surgeon',
];
final List<int> charges = [
  300,
  330,
  250,
  280,
  310,
  270,
  250,
  320,
];
final List<double> stars = [
  5.0,
  5.0,
  4.8,
  4.8,
  4.5,
  5.0,
  4.8,
  5.0,
];

final List<String> docImages = [
  //'https://images.unsplash.com/photo-1618255697744-b45454ae6b39?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
  'https://pm1.narvii.com/7151/da07ec22fcd20ef1a49213ea097b974b629d20d2r1-717-896v2_hq.jpg',
  'http://www.creativaimages.com/wp-content/uploads/2017/08/beautiful-doctor-offering-handshake-at-the-camera-t.jpg',
  'https://images.unsplash.com/photo-1623854766464-c3645e6841d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
  'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
  'https://media.istockphoto.com/photos/cheerful-doctor-picture-id468613710?k=20&m=468613710&s=612x612&w=0&h=Meo1xEgI5gVl9mBvlKrnHY_lQVgyU1VdqAErRDl0mro=',
  'https://cdn.pixabay.com/photo/2017/03/14/03/20/woman-2141808_1280.jpg',
  'https://cdn.pixabay.com/photo/2021/02/09/06/45/doctor-5997504_1280.jpg',
  'https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80',
];
