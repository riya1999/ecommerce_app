import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture});

  /// Helper function to get the full Name
  String get fullName => '$firstName $lastName';

  /// Helper function to format Phone NUmber
  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  /// Static function to split full name into first and last name
  static List<String> nameParts(fullName) => fullName.split("");

  /// Static Function to generate a username from the full name
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUserName = "$firstName$lastName";
    String usernameWithPrefix = "cwt_$camelCaseUserName";
    return usernameWithPrefix;
  }

  /// Static function to create a empty user model
  static UserModel empty() =>
      UserModel(id: '',
          firstName: '',
          lastName: '',
          username: '',
          email: '',
          phoneNumber: '',
          profilePicture: '');

   /// convert model to storing data in firebase
   Map<String,dynamic> toJson() {
     return {
       'firstName': firstName,
       'lastName': lastName,
       'username': username,
       'email': email,
       'profilePicture': profilePicture,
     };
   }

     /// Factory method to create a UserModel from a firebase document snapshot.
     factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
     if(document.data() != null){
       final data = document.data();
       return UserModel(id: document.id,
           firstName: data!['firstName'] ?? '',
           lastName: data['lastName'] ?? '',
           username: data['username'] ?? '',
           email: data['email'] ?? '',
           phoneNumber: data['phoneNumber']?? '',
           profilePicture: data['profilePicture'] ?? ''
       );
     }
     return UserModel.empty();
   }

}
