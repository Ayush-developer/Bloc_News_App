import 'package:flutter_bloc/flutter_bloc.dart';

import './welcome_events.dart';
import './welcome_states.dart';

class NormalBloc extends Bloc<NormalEvent,NormalState>{
  NormalBloc():super(NormalInitialState()){
    on<ChangeEvent>((event,emit){
      if(event.i ==1){
        emit(NormalOneState("So by colonel hearted ferrars. Draw from upon here gone add one. He in sportsman household otherwise it perceived instantly. Is inquiry no he several excited am. Called though excuse length ye needed it he having. Whatever throwing we on resolved entrance together graceful. Mrs assured add private married removed believe did she."));
      }
      else if(event.i ==2){
        emit(NormalTwoState("Ham followed now ecstatic use speaking exercise may repeated. Himself he evident oh greatly my on inhabit general concern. It earnest amongst he showing females so improve in picture. Mrs can hundred its greater account. Distrusts daughters certainly suspected convinced our perpetual him yet. Words did noise taken right state are since."));

      }
      else{
        emit(NormalThreeState("Ye on properly handsome returned throwing am no whatever. In without wishing he of picture no exposed talking minutes. Curiosity continual belonging offending so explained it exquisite. Do remember to followed yourself material mr recurred carriage. High drew west we no or at john. About or given on witty event. Or sociable up material bachelor bringing landlord confined. Busy so many in hung easy find well up. So of exquisite my an explained remainder. Dashwood denoting securing be on perceive my laughing so."));
      }

    });
  }
}