

import 'package:emart_app/consts/consts.dart';

FirebaseAuth auth=FirebaseAuth.instance;

FirebaseFirestore firestore= FirebaseFirestore.instance;

User? currentuser=auth.currentUser;



//

const userscollection="users";