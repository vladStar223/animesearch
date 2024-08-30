



class EmptyRequestException implements Exception{
  @override
  String toString() =>"Empty";
}
class ManyRequestException implements Exception{
  @override
  String toString() =>"Too Many Request";
}
class NotFoundException implements Exception{
  String name;
  NotFoundException(this.name);
  @override
  String toString() =>"Not found";
}
class ServerNotResponseException implements Exception{
  @override
  String toString() =>"Service is down for maintenance";
}