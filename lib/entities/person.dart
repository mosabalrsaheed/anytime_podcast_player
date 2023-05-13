// Copyright 2020 Ben Hills and the project contributors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:anytime/core/extensions.dart';

class Person {
  final String name;
  final String role;
  final String group;
  final String image;
  final String link;

  Person({
    this.name,
    this.role,
    this.group,
    String image,
    String link,
  })  : image = image?.forceHttps,
        link = link?.forceHttps;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'role': role,
      'group': group,
      'image': image,
      'link': link,
    };
  }

  static Person fromMap(Map<String, dynamic> chapter) {
    return Person(
      name: chapter['name'] as String ?? '',
      role: chapter['role'] as String ?? '',
      group: chapter['group'] as String ?? '',
      image: chapter['image'] as String ?? '',
      link: chapter['link'] as String ?? '',
    );
  }
}