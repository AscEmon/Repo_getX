import 'package:flutter/material.dart';
import '../../model/get_response.dart';

@immutable
class GetState {
  final List<GetResponseData>? posts;
  final bool isGetLoading;
  const GetState({
    required this.isGetLoading,
    required this.posts,
  });

  GetState copyWith({
    bool? isGetLoading,
    List<GetResponseData>? posts,
  }) {
    return GetState(
      isGetLoading: isGetLoading ?? this.isGetLoading,
      posts: posts ?? this.posts,
    );
  }
}
