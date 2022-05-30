import 'dart:core';

class ReviewContent {
  final String name;
  final String text_review;

  ReviewContent({required this.name, required this.text_review});

  Map<String, dynamic> toMap() {
    return {
      'userName': this.name,
      'review_txt': this.text_review,
    };
  }
}
