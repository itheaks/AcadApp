// This is code for without firebase and which on main.dart with anonymous sign-in.
// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
//
// import 'cgpa.dart';
// import 'grade.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Academy Analyzer',
//       theme: ThemeData(
//         primarySwatch: Colors.teal,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Academy Analyzer'),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             MainPage(),
//             Expanded(
//               child: SubjectCardList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   final List<String> chapterTexts = [
//     'Check Your Grade',
//     'Calculate Your CGPA',
//     //'Find My Color',
//   ];
//
//   final CarouselController _carouselController = CarouselController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Explore and Enjoy',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//         CarouselSlider(
//           carouselController: _carouselController,
//           options: CarouselOptions(
//             height: 250,
//             enlargeCenterPage: true,
//             viewportFraction: 0.9,
//             aspectRatio: 16 / 9,
//             scrollDirection: Axis.horizontal,
//             enableInfiniteScroll: true,
//             onPageChanged: (index, reason) {},
//           ),
//           items: chapterTexts.map((chapterText) {
//             return GestureDetector(
//               onTap: () {
//                 final index = chapterTexts.indexOf(chapterText);
//                 if (index == 0) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => SliderScreen(),
//                     ),
//                   );
//                 } else if (index == 1) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => CGPACalculator(),
//                     ),
//                   );
//                 }
//                 // else if (index == 2) {
//                 //   Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //       builder: (context) => ColorPage(),
//                 //     ),
//                 //   );
//                 // }
//               },
//               child: Container(
//                 margin: EdgeInsets.fromLTRB(30, 10, 30, 20),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: LinearGradient(
//                     colors: [
//                       Colors.teal.shade300,
//                       Colors.teal.shade100,
//                     ],
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.3),
//                       blurRadius: 10,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 height: 250,
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(height: 8),
//                       Text(
//                         chapterText,
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               icon: Icon(Icons.arrow_back),
//               onPressed: () {
//                 _carouselController.previousPage();
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.arrow_forward),
//               onPressed: () {
//                 _carouselController.nextPage();
//               },
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
//
// class Subject {
//   String name;
//   String about;
//   int cie1;
//   int cie2;
//   int cie3;
//   int aat;
//   int quiz;
//   String note;
//
//   Subject({
//     required this.name,
//     required this.about,
//     required this.cie1,
//     required this.cie2,
//     required this.cie3,
//     required this.aat,
//     required this.quiz,
//     required this.note,
//   });
// }
//
// class SubjectCardList extends StatefulWidget {
//   @override
//   _SubjectCardListState createState() => _SubjectCardListState();
// }
//
// class _SubjectCardListState extends State<SubjectCardList> {
//   List<Subject> subjects = [];
//
//   void addSubjectCard(Subject subject) {
//     setState(() {
//       subjects.add(subject);
//     });
//   }
//
//   void editSubjectCard(int index, Subject subject) {
//     setState(() {
//       subjects[index] = subject;
//     });
//   }
//
//   void deleteSubjectCard(int index) {
//     setState(() {
//       subjects.removeAt(index);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Subject Cards'),
//       ),
//       body: ListView.builder(
//         itemCount: subjects.length,
//         itemBuilder: (context, index) {
//           return SubjectCard(
//             subject: subjects[index],
//             onEdit: (subject) {
//               editSubjectCard(index, subject);
//             },
//             onDelete: () {
//               deleteSubjectCard(index);
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => CreateSubjectCard(addSubjectCard)),
//           );
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class CreateSubjectCard extends StatefulWidget {
//   final Function(Subject) onSave;
//
//   CreateSubjectCard(this.onSave);
//
//   @override
//   _CreateSubjectCardState createState() => _CreateSubjectCardState();
// }
//
// class _CreateSubjectCardState extends State<CreateSubjectCard> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController aboutController = TextEditingController();
//   TextEditingController cie1Controller = TextEditingController();
//   TextEditingController cie2Controller = TextEditingController();
//   TextEditingController cie3Controller = TextEditingController();
//   TextEditingController aatController = TextEditingController();
//   TextEditingController quizController = TextEditingController();
//   TextEditingController noteController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Create Subject Card'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(labelText: 'Subject'),
//               ),
//               TextField(
//                 controller: aboutController,
//                 decoration: InputDecoration(labelText: 'About'),
//               ),
//               TextField(
//                 controller: cie1Controller,
//                 decoration: InputDecoration(labelText: 'CIE 1'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: cie2Controller,
//                 decoration: InputDecoration(labelText: 'CIE 2'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: cie3Controller,
//                 decoration: InputDecoration(labelText: 'CIE 3'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: aatController,
//                 decoration: InputDecoration(labelText: 'AAT'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: quizController,
//                 decoration: InputDecoration(labelText: 'Quiz'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: noteController,
//                 decoration: InputDecoration(labelText: 'Note'),
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
//                   String name = nameController.text;
//                   String about = aboutController.text;
//                   int cie1 = int.tryParse(cie1Controller.text) ?? 0;
//                   int cie2 = int.tryParse(cie2Controller.text) ?? 0;
//                   int cie3 = int.tryParse(cie3Controller.text) ?? 0;
//                   int aat = int.tryParse(aatController.text) ?? 0;
//                   int quiz = int.tryParse(quizController.text) ?? 0;
//                   String note = noteController.text;
//                   Subject subject = Subject(
//                     name: name,
//                     about: about,
//                     cie1: cie1,
//                     cie2: cie2,
//                     cie3: cie3,
//                     aat: aat,
//                     quiz: quiz,
//                     note: note,
//                   );
//                   widget.onSave(subject);
//                   Navigator.pop(context);
//                 },
//                 child: Text('Save'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class SubjectCard extends StatelessWidget {
//   final Subject subject;
//   final Function(Subject) onEdit;
//   final Function onDelete;
//
//   SubjectCard({required this.subject, required this.onEdit, required this.onDelete});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text(subject.name),
//         subtitle: Text('CIE 1: ${subject.cie1} | CIE 2: ${subject.cie2} | CIE 3: ${subject.cie3}'),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             IconButton(
//               icon: Icon(Icons.edit),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => EditSubjectCard(subject, onEdit)),
//                 );
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.delete),
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: Text('Delete Subject'),
//                       content: Text('Are you sure you want to delete this subject?'),
//                       actions: <Widget>[
//                         TextButton(
//                           child: Text('Cancel'),
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                         ),
//                         TextButton(
//                           child: Text('Delete'),
//                           onPressed: () {
//                             onDelete();
//                             Navigator.of(context).pop();
//                           },
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class EditSubjectCard extends StatefulWidget {
//   final Subject subject;
//   final Function(Subject) onEdit;
//
//   EditSubjectCard(this.subject, this.onEdit);
//
//   @override
//   _EditSubjectCardState createState() => _EditSubjectCardState();
// }
//
// class _EditSubjectCardState extends State<EditSubjectCard> {
//   late TextEditingController nameController;
//   late TextEditingController aboutController;
//   late TextEditingController cie1Controller;
//   late TextEditingController cie2Controller;
//   late TextEditingController cie3Controller;
//   late TextEditingController aatController;
//   late TextEditingController quizController;
//   late TextEditingController noteController;
//
//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: widget.subject.name);
//     aboutController = TextEditingController(text: widget.subject.about);
//     cie1Controller = TextEditingController(text: widget.subject.cie1.toString());
//     cie2Controller = TextEditingController(text: widget.subject.cie2.toString());
//     cie3Controller = TextEditingController(text: widget.subject.cie3.toString());
//     aatController = TextEditingController(text: widget.subject.aat.toString());
//     quizController = TextEditingController(text: widget.subject.quiz.toString());
//     noteController = TextEditingController(text: widget.subject.note);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Subject Card'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(labelText: 'Subject'),
//               ),
//               TextField(
//                 controller: aboutController,
//                 decoration: InputDecoration(labelText: 'About'),
//               ),
//               TextField(
//                 controller: cie1Controller,
//                 decoration: InputDecoration(labelText: 'CIE 1'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: cie2Controller,
//                 decoration: InputDecoration(labelText: 'CIE 2'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: cie3Controller,
//                 decoration: InputDecoration(labelText: 'CIE 3'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: aatController,
//                 decoration: InputDecoration(labelText: 'AAT'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: quizController,
//                 decoration: InputDecoration(labelText: 'Quiz'),
//                 keyboardType: TextInputType.number,
//               ),
//               TextField(
//                 controller: noteController,
//                 decoration: InputDecoration(labelText: 'Note'),
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
//                   String name = nameController.text;
//                   String about = aboutController.text;
//                   int cie1 = int.tryParse(cie1Controller.text) ?? 0;
//                   int cie2 = int.tryParse(cie2Controller.text) ?? 0;
//                   int cie3 = int.tryParse(cie3Controller.text) ?? 0;
//                   int aat = int.tryParse(aatController.text) ?? 0;
//                   int quiz = int.tryParse(quizController.text) ?? 0;
//                   String note = noteController.text;
//                   Subject updatedSubject = Subject(
//                     name: name,
//                     about: about,
//                     cie1: cie1,
//                     cie2: cie2,
//                     cie3: cie3,
//                     aat: aat,
//                     quiz: quiz,
//                     note: note,
//                   );
//                   widget.onEdit(updatedSubject);
//                   Navigator.pop(context);
//                 },
//                 child: Text('Update'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
