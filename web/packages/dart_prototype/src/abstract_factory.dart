part of prototype_library;

abstract class Factory<TargetType, SourceType> {
  TargetType create(SourceType);
  List<TargetType> createList(SourceType);
}