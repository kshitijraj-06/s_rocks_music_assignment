import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Models/service_model.dart';

class HomeController extends GetxController{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final RxList<ServiceModel> services = <ServiceModel>[].obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit(){
    super.onInit();
    fetchServices();
  }

  Future<void> fetchServices() async{
    isLoading.value = true;
    try{
      final querysnapshot = await _firestore.collection('services').get();
      final List<ServiceModel> serviceList = querysnapshot.docs.map((doc){
        return ServiceModel.fromMap(doc.data(), doc.id);
      }).toList();
      services.assignAll(serviceList);
    }catch(e){
      print('Error : $e');
  }finally{
      isLoading.value = false;
    }
  }
}