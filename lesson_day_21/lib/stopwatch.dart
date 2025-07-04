import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  bool isTicking = true;

  int milliseconds = 0;
  late Timer timer;
  final laps = <int>[];
  final itemHeight = 50.0;
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 100), _onTick);
  }

  void _onTick(Timer time) {
    setState(() {
      milliseconds += 100;
    });
  }

  String _secondsText(int milliseconds) {
    final seconds = milliseconds / 1000;
    return "$seconds seconds";
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 100), _onTick);
    setState(() {
      isTicking = true;
    });
  }

  void _lap() {
    setState(() {
      laps.add(milliseconds);
      milliseconds = 0;
    });
    scrollController.animateTo(itemHeight * laps.length,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      isTicking = false;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stopwatch"),
        ),
        body: Column(
          children: [
            Expanded(child: _buildCounter(BuildContext, context)),
            Expanded(child: _buildLapDisplay()),
          ],
        ));
  }

  Widget _buildLapDisplay() {
    return Scrollbar(
      child: ListView.builder(
        itemCount: laps.length,
        itemExtent: itemHeight,
        controller: scrollController,
        itemBuilder: (context, index) {
          final milliseconds = laps[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 50),
            title: Text('Lap ${index + 1}'),
            trailing: Text(_secondsText(milliseconds)),
          );
        },
      ),
    );
  }

  Widget _buildCounter(BuildContext, context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Laps ${laps.length + 1}",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.white),
          ),
          Text(
            _secondsText(milliseconds),
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          _buildControls()
        ],
      ),
    );
  }

  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            onPressed: isTicking ? null : _startTimer,
            child: Text("Start")),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: isTicking ? _lap : null,
            child: const Text("Lap")),
        const SizedBox(
          width: 20,
        ),
        TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: isTicking ? _stopTimer : null,
            child: Text("Stop"))
      ],
    );
  }
}
