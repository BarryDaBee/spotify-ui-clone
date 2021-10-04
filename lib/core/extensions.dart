extension StringExtension on String {
  get jpg => 'assets/images/' + this + '.jpg';
  get svg => 'assets/images/' + this + '.svg';
  get icon => 'assets/images/icons/' + this + '-icon.svg';
  get png => 'assets/images/' + this + '.png';
}
