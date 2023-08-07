// Adapted from StackOverflow,
// Author: 







extension Capitalization on String {
  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), '').split(' ').map((e) => e.toCapitalized()).join(' ');
}