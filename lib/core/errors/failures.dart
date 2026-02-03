abstract class Failures {}

class ServerFailure extends Failures {}

class CacheFailure extends Failures {}

class OfflineFailure extends Failures {}

class ApiFailure extends Failures {}

class JsonFailure extends Failures {}

class UnauthorizedFailure extends Failures {}

class UnknownFailure extends Failures {}

class TimeoutFailure extends Failures {}
