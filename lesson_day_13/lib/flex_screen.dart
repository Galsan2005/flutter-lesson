import 'package:flutter/material.dart';
import 'package:lesson_day_13/labeled_container.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible and Expanded"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ..._header(context, "Expanded"),
          const DemoExpanded(),
          ..._header(context, "Flexible"),
          const DemoFlexible(),
          const Expanded(child: Spacer()),
          const DemoFooter(),
        ],
      ),
    );
  }

  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      const SizedBox(
        height: 20,
      ),
      Text(
        text,
        style: Theme
            .of(context)
            .textTheme
            .headlineSmall,
      )
    ];
  }
}

class DemoExpanded extends StatelessWidget {
  const DemoExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          LabeledContainer(
            text: '100',
            color: Colors.green,
            width: 100,
          ),
          Expanded(
              child: LabeledContainer(
                text: "Үлдэгдэл хэсэг",
                color: Colors.purple,
                textColor: Colors.white,
              )),
          LabeledContainer(
            text: "40",
            color: Colors.green,
            width: 40,
          )
        ],
      ),
    );
  }
}

class DemoFlexible extends StatelessWidget {
  const DemoFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          Flexible(
            // flex: 1,
              child: LabeledContainer(
                text: "25%",
                color: Colors.orange,
              )),
          Flexible(
              flex: 1,
              child: LabeledContainer(
                text: "25%",
                color: Colors.deepOrange,
              )),
          Flexible(
              flex: 2,
              child: LabeledContainer(
                text: "50%",
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}

class DemoFooter extends StatelessWidget {
  const DemoFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
        child: Text(
          "Доорх хэсэг наалдсан байна.",
          style: Theme
              .of(context)
              .textTheme
              .titleSmall,
        ),
      ),
    );
  }
}
