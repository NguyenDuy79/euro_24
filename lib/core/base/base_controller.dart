import "package:euro_app_24/core/base/index.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class BaseRepositoryController<R extends BaseRepository<P>,
    P extends BaseProvider, T extends Object?> extends SuperController<T> {
  BaseRepositoryController({
    required this.repository,
  });

  final R repository;

  @override
  void onInit() {
    super.onInit();
    debugPrint("$runtimeType onInit called");
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("$runtimeType onReady called");
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint("$runtimeType onClose called");
  }

  @override
  void onDetached() {
    debugPrint("$runtimeType onDetached called");
  }

  @override
  void onInactive() {
    debugPrint("$runtimeType onInactive called");
  }

  @override
  void onPaused() {
    debugPrint("$runtimeType onPaused called");
  }

  @override
  void onResumed() {
    debugPrint("$runtimeType onResumed called");
  }

  @override
  void onHidden() {
    debugPrint("$runtimeType onHidden called");
  }
}

class BaseController<T extends Object?> extends SuperController<T> {
  BaseController();

  @override
  void onInit() {
    super.onInit();
    debugPrint("currentRoute: ${Get.currentRoute}");
    debugPrint("$runtimeType onInit called");
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("$runtimeType onReady called");
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint("$runtimeType onClose called");
  }

  @override
  void onDetached() {
    debugPrint("$runtimeType onDetached called");
  }

  @override
  void onInactive() {
    debugPrint("$runtimeType onInactive called");
  }

  @override
  void onPaused() {
    debugPrint("$runtimeType onPaused called");
  }

  @override
  void onResumed() {
    debugPrint("$runtimeType onResumed called");
  }

  @override
  void onHidden() {
    debugPrint("$runtimeType onHidden called");
  }

  void pop() {}
}
