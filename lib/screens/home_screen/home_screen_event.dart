abstract class HomeScreenEvent {}

class NavigationEvent extends HomeScreenEvent {}

class OnChangedHomeScreenEvent extends HomeScreenEvent {
  final String text;

  OnChangedHomeScreenEvent(this.text);
}