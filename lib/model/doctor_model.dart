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

final List<String> names = [
  'Dr. Jenny Roy',
  'Dr. Tanisha Khan',
  'Dr. Iva Kerpenter',
  'Dr. Mayme Gomez',
  'Dr. Daniel',
];
final List<String> designations = [
  'Heart Surgeon',
  'Orthopedic',
  'Dentist',
  'Heart Surgeon',
  'Heart Surgeon',
];
final List<int> charges = [
  300,
  250,
  280,
  310,
  320,
];
final List<double> stars = [
  5.0,
  4.8,
  4.8,
  4.5,
  5.0,
];

final List<String> docImages = [
  'https://images.unsplash.com/photo-1618255697744-b45454ae6b39?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
  'https://images.unsplash.com/photo-1623854766464-c3645e6841d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
  'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1584432810601-6c7f27d2362b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1083&q=80',
  'https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=464&q=80',
];
