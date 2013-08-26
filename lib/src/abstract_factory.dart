part of prototype_library;

abstract class Factory<TargetType, SourceType> {
  List<TargetType> create(SourceType);
}