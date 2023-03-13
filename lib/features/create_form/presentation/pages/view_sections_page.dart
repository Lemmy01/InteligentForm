import 'package:flutter/material.dart';
import 'package:inteligent_forms/features/create_form/presentation/widgets/section_card.dart';

import '../../domain/entities/section.dart';

class ViewSectionsPage extends StatefulWidget {
  const ViewSectionsPage({super.key});

  @override
  State<ViewSectionsPage> createState() => _ViewSectionsPageState();
}

class _ViewSectionsPageState extends State<ViewSectionsPage> {
  int sectionNumber = 0;
  List<Section> sections = [];
  void addSection() {
    setState(() {
      sections.add(
          Section(content: '', scanType: "", sectionNumber: sectionNumber));
      sectionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        onPressed: addSection,
        //TODO: Add onPressed (Create Section add to a list of sections models)
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        //Should be a list of sections
        itemCount: sections.length,
        itemBuilder: (BuildContext context, int index) {
          return SectionCard(
            section: sections[index],
          );
        },
      ),
    );
  }
}
