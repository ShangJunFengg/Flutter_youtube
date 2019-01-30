import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinkit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text("SpinKit", style: TextStyle(fontSize: 24.0)),
      ),
      body: SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitRotatingCircle(color: Colors.blue),
                SpinKitRotatingPlain(color: Colors.orange),
                SpinKitChasingDots(color: Colors.red),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitPumpingHeart(color: Colors.blue),
                SpinKitPulse(color: Colors.blue),
                SpinKitDoubleBounce(color: Colors.blue),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitWave(color: Colors.blue, type: SpinKitWaveType.start),
                SpinKitWave(color: Colors.blue, type: SpinKitWaveType.center),
                SpinKitWave(color: Colors.blue, type: SpinKitWaveType.end),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitThreeBounce(color: Colors.blue),
                SpinKitWanderingCubes(color: Colors.blue),
                SpinKitWanderingCubes(
                    color: Colors.blue, shape: BoxShape.circle),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitCircle(color: Colors.blue),
                SpinKitFadingFour(color: Colors.red),
                SpinKitFadingFour(
                    color: Colors.brown, shape: BoxShape.rectangle),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitFadingCube(color: Colors.orange),
                SpinKitCubeGrid(size: 51.0, color: Colors.orange),
                SpinKitFoldingCube(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitRing(color: Colors.orange),
                SpinKitDualRing(color: Colors.orange),
                SpinKitRipple(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitFadingGrid(color: Colors.orange),
                SpinKitFadingGrid(
                    color: Colors.orange, shape: BoxShape.rectangle),
                SpinKitHourGlass(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitSpinningCircle(color: Colors.orange),
                SpinKitSpinningCircle(
                    color: Colors.orange, shape: BoxShape.rectangle),
                SpinKitFadingCircle(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 48.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SpinKitPouringHourglass(color: Colors.orange),
              ],
            ),
            const SizedBox(height: 64.0),
          ],
        ),
      ),
    );
  }
}