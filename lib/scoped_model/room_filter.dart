import 'package:hook_up_rent/home/tab_seach/filter_bar/data.dart';
import 'package:scoped_model/scoped_model.dart';

class FilterBarModel extends Model {
  List<GeneralType>? _roomTypeList;
  List<GeneralType>? _orientedList;
  List<GeneralType>? _floorList;

  final Set<String> _selectedList = <String>{};

  Map<String, List<GeneralType>> get dataList {
    var result = <String, List<GeneralType>>{};
    if (_roomTypeList != null) {
      result['roomTypeList'] = _roomTypeList!;
    }
    if (_orientedList != null) {
      result['orientedList'] = _orientedList!;
    }
    if (_floorList != null) {
      result['floorList'] = _floorList!;
    }
    return result;
  }

  set dataList(Map<String, List<GeneralType>> data) {
    _roomTypeList = data['roomTypeList'];
    _orientedList = data['orientedList'];
    _floorList = data['floorList'];
    notifyListeners();
  }

  Set<String> get selectedList {
    return _selectedList;
  }

  selectedListToggleItem(String data) {
    if (_selectedList.contains(data)) {
      _selectedList.remove(data);
    } else {
      _selectedList.add(data);
    }
    notifyListeners();
  }
}
