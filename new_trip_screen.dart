
import 'package:flutter/material.dart'; // استيراد مكتبة Flutter لواجهة المستخدم
import 'trip_details_screen.dart'; // استيراد صفحة تفاصيل الرحلة
import 'ride_sharing_screen.dart'; // استيراد صفحة مشاركة الركوب

// تعريف صفحة اختيار الوجهة كـ StatefulWidget لأننا نحتاج إلى تحديث الحالة
class DestinationSelectionScreen extends StatefulWidget {
  @override
  _DestinationSelectionScreenState createState() =>
      _DestinationSelectionScreenState(); // إنشاء حالة لصفحة اختيار الوجهة
}

// تعريف الحالة المرتبطة بصفحة اختيار الوجهة
class _DestinationSelectionScreenState
    extends State<DestinationSelectionScreen> {
  // متحكم لحقل إدخال الوجهة
  TextEditingController destinationController = TextEditingController();

  // متحكم لحقل إدخال تاريخ الرحلة
  TextEditingController tripDateController = TextEditingController();

  // متغير لعدد الركاب يبدأ بقيمة افتراضية 1
  int passengers = 1;

  // تنظيف المتحكمات عند إغلاق الصفحة لتحرير الموارد
  @override
  void dispose() {
    destinationController.dispose(); // التخلص من متحكم الوجهة
    tripDateController.dispose(); // التخلص من متحكم تاريخ الرحلة
    super.dispose(); // استدعاء الدالة الأصلية لتنظيف إضافي
  }

  // بناء واجهة المستخدم للصفحة
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Destination'), // عنوان شريط العنوان
        backgroundColor: Color(0xFFB2A59C), // لون شريط العنوان
      ),
      body: SingleChildScrollView(
        // يسمح بتمرير الصفحة في حال ازدحام المحتوى
        child: Padding(
          padding: const EdgeInsets.all(16.0), // إضافة حواف حول المحتوى
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // محاذاة النصوص من اليسار
            children: [
              Text(
                'Select Your Destination:',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold), // نص عنوان كبير ومميز
              ),
              SizedBox(height: 10), // إضافة مسافة رأسية بين العناصر

              // حقل إدخال الوجهة
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0), // حواف حول الحقل
                child: TextField(
                  controller: destinationController, // متحكم النص لحقل الوجهة
                  decoration: InputDecoration(
                    labelText: 'Destination', // النص المساعد للحقل
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(12.0), // حواف مستديرة للحقل
                      borderSide: BorderSide(
                          color: Color(0xFFB2A59C),
                          width: 2.0), // إطار الحقل بلون مخصص
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12.0), // حواف مستديرة عند التركيز
                      borderSide: BorderSide(
                          color: Color(0xFFB2A59C),
                          width: 2.0), // إطار الحقل عند التركيز
                    ),
                  ),
                ),
              ),

              // حقل إدخال تاريخ الرحلة
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0), // حواف حول الحقل
                child: TextField(
                  controller:
                      tripDateController, // متحكم النص لحقل تاريخ الرحلة
                  decoration: InputDecoration(
                    labelText: 'Trip Date', // النص المساعد للحقل
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(12.0), // حواف مستديرة للحقل
                      borderSide: BorderSide(
                          color: Color(0xFFB2A59C),
                          width: 2.0), // إطار الحقل بلون مخصص
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          12.0), // حواف مستديرة عند التركيز
                      borderSide: BorderSide(
                          color: Color(0xFFB2A59C),
                          width: 2.0), // إطار الحقل عند التركيز
                    ),
                  ),
                  keyboardType: TextInputType
                      .datetime, // تحديد نوع لوحة المفاتيح كـ تاريخ
                ),
              ),

              SizedBox(height: 10), // مسافة رأسية

              Text(
                'Number of Passengers:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold), // نص لعدد الركاب
              ),

              // صف لعرض والتحكم في عدد الركاب
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // محاذاة العناصر في بداية الصف
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (passengers > 1) {
                          passengers--; // تقليل عدد الركاب عند النقر
                        }
                      });
                    },
                    icon: Icon(Icons.remove), // أيقونة تقليل عدد الركاب
                  ),
                  Text(
                    '$passengers', // عرض عدد الركاب الحالي
                    style: TextStyle(fontSize: 18), // نمط النص لعدد الركاب
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        passengers++; // زيادة عدد الركاب عند النقر
                      });
                    },
                    icon: Icon(Icons.add), // أيقونة زيادة عدد الركاب
                  ),
                ],
              ),

              SizedBox(height: 20), // مسافة رأسية

              // زر لعرض تفاصيل الرحلة
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEAE3D2), // لون الزر
                  padding: EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 12.0), // حواف داخلية للزر
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12.0), // حواف مستديرة للزر
                  ),
                
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RideSharingScreen()), // الانتقال إلى صفحة تفاصيل الرحلة
                  );
                },
                child: Text(
                  'Go to Ride Sharing',
                  style: TextStyle(
                    color: Colors.black87, // لون النص داخل الزر
                  ),
                ),
              ),
               SizedBox(height: 16.0),
              
              // زر الانتقال إلى واجهة مشاركة الركوب
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEAE3D2), // لون الزر
                  padding: EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 12.0), // حواف داخلية للزر
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // حواف مستديرة للزر
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RideDetailsScreen()), // الانتقال إلى صفحة مشاركة الركوب
                  );
                },
                child: Text(
                  'View Trip Details',
                  style: TextStyle(
                    color: Colors.black87, // لون النص داخل الزر
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
