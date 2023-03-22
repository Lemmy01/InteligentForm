import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../bloc/fill_form_bloc.dart';
import '../bloc/fill_form_state.dart';

MobileScannerController cameraController = MobileScannerController();

class ScanWidget extends StatelessWidget {
  const ScanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Scanner'),
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.torchState,
              builder: (context, state, child) {
                switch (state) {
                  case TorchState.off:
                    return const Icon(Icons.flash_off, color: Colors.grey);
                  case TorchState.on:
                    return const Icon(Icons.flash_on, color: Colors.yellow);
                }
              },
            ),
            iconSize: 32.0,
            onPressed: () => cameraController.toggleTorch(),
          ),
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.cameraFacingState,
              builder: (context, state, child) {
                switch (state) {
                  case CameraFacing.front:
                    return const Icon(Icons.camera_front);
                  case CameraFacing.back:
                    return const Icon(Icons.camera_rear);
                }
              },
            ),
            iconSize: 32.0,
            onPressed: () => cameraController.switchCamera(),
          ),
        ],
      ),
      body: BlocBuilder<FillFormBloc, FillFormState>(
        builder: (BuildContext context, state) {
          return MobileScanner(
            // fit: BoxFit.contain,
            controller: cameraController,
            onDetect: (capture) {
              final List<Barcode> barcodes = capture.barcodes;
              final Uint8List? image = capture.image;
              for (final barcode in barcodes) {
                debugPrint('Barcode found! ${barcode.rawValue}');
                //TODO: Add logic to open fill form
                context.read<FillFormBloc>().add(
                      CheckIfFormExistsEvent(
                        barcode.rawValue!.trim(),
                      ),
                    );
              }
            },
          );
        },
      ),
    );
  }
}
