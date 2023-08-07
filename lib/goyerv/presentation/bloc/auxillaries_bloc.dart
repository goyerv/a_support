// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor






import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auxillaries_event.dart';
part 'auxillaries_state.dart';

class AuxillariesBloc extends Bloc<AuxillariesEvent, AuxillariesState> {
  AuxillariesBloc() : super(AuxillariesInitial()) {
    on<AuxillariesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
