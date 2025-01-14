#pragma once

#include "type/pTypes.hpp"

namespace Utility {
using namespace Contain;

using JString = AString;

template <class T> struct is_string {
  static char is_str(const char *);
  static char is_str(pobject<const char *>);
  static char is_str(pobject<AString>);
  static double is_str(...);
  static T t;
  enum { value = sizeof(is_str(t)) == sizeof(char) };
};

struct KeyValue : public Reflect<KeyValue> {
  JString key;
  JString value;
  Linker<KeyValue> list;

  bool bstr = false;
  bool blist = false;
  bool bObj = false;

  template <typename PValue> KeyValue(JString _key, PValue _value) : key(_key) {
    bstr = is_string<PValue>::value;
    value = _value;
  }

  KeyValue() = default;
  KeyValue(JString _key, Linker<KeyValue> _value) : key(_key) {
    list = _value;
    blist = true;
  }

  KeyValue(Linker<KeyValue> _value) : list(_value) {
    bObj = true;
  }

  KeyValue operator[](const JString& key) {
    for(int index=0;index<list.size;index++){
      if(list[index].key.Equal(key)) return list[index];
    }
    return KeyValue("null","null");
  }

  JString SerialList() {
    JString temp = "{";
    for (int index = 0; index < list.size; index++) {
      auto item = list[index];
      temp += item.Serial();
      if (index != list.size - 1)
        temp += ",";
    }
    temp += "}";
    return temp;
  }

  JString Serial() {
    JString temp = "";
    if(!bObj){
      temp += "\"";
      temp += key;
      temp += "\":";
    }
    if (bstr) {
      temp += "\"";
      temp += value;
      temp += "\"";
    } else if (blist) {
      temp += "[";
      for (int index = 0; index < list.size; index++) {
        temp += "{";
        temp += list[index].Serial();
        temp += "}";
        if (index != list.size - 1)
          temp += ",";
      }
      temp += "]";
    } else if (bObj) {
      // temp += "{";
      for (int index = 0; index < list.size; index++) {
        temp += list[index].Serial();
        if (index != list.size - 1)
          temp += ",";
      }
      // temp += "}";
    } else {
      temp += value;
    }
    return temp;
  }

  // reserve for more flexable
  // JString Serial2() {
  //   JString temp = "\"";
  //   temp += key;
  //   temp += "\":";
  //   if (is_same_class<JString>(value->classname)) {
  //       temp += "\"";
  //       temp += value->toString();
  //       temp += "\"";
  //   }else if(is_same_class<KeyValue>(value->classname)){
  //       auto* pointer = value;
  //       temp+=dynamic_cast<KeyValue*>(pointer)->Serial2();
  //   }else if(is_same_class<Linker<KeyValue>>(value->classname)){
  //       temp += "[";
  //       auto pointer = dynamic_cast<Linker<KeyValue>*>(value);
  //       for(int index=0;index<pointer->size;index++){
  //           temp+= (*pointer)[index].Serial2();
  //           if(index!=pointer->size-1)
  //               temp+=",";
  //       }
  //       temp += "]";
  //   }else{
  //     temp+=value->toString();
  //   }
  //   return temp;
  // }
};

using JAarry = Linker<KeyValue>;

class JObject {
public:
  JAarry list;
  void Add(KeyValue obj) { list.Add(move(obj)); }

  template <typename Key, typename Value> void Add(Key key, Value value) {
    list.Add(KeyValue(key, value));
  }

  template <typename T, typename U, typename... Ts>
  void Add(T t1, U u1, Ts... ts) {
    list.Add(KeyValue(t1, u1));
    Add(ts...);
  }

  template <class T> void Set(JString key, KeyValue obj) {
    for (int index = 0; index < list.size; index++) {
      if (key == list[index].key) {
        list[index] = obj;
      }
    }
  }

  template <typename TV> auto Get(TV key) {
    for (int index = 0; index < list.size; index++) {
      if (key == list[index]) {
        return list[index].value;
      }
    }
  }

  JString Serial() {
    JString temp = "{";
    for (int index = 0; index < list.size; index++) {
      auto item = list[index];
      temp += item.Serial();
      if (index != list.size - 1)
        temp += ",";
    }
    temp += "}";
    return temp;
  }

  template <typename type> type operator[](JString key) {}

  auto static Parse(JString input) {
    plog(input);
    Linker<JString> op = Linker<JString>();
    KeyValue ret= KeyValue();

    int index = 0;
    auto skipspace = [&](const JString &errmsg) {
      while (index < input._length()) {
        if (input[index] != ' ' && input[index] != '\r' &&
            input[index] != '\n' && input[index] != '\t' && input[index] != ' ')
          break;
        index++;
      }
      if (index == input._length() - 1) {
        plog(errmsg);
        return;
      }
    };

    while (index < input._length()) {
      auto temp = input[index];
      // bool bString = false;
      if (temp == '{' || temp == '}' || temp == '[' || temp == ']')
        op.Add(temp);

      if (temp == '"'
          // && bString
      ) {
        index++;
        JString value = "";
        while (index < input._length()) {
          if (input[index] == '"' && input[index - 1] != '\\')
            break;
          value += input[index];
          index++;
        }
        if (index == input._length() - 1) {
          // error
          plog("error : end");
          return ret;
        }

        op.Add(value);
      }

      if (temp == ':') {
        skipspace("非预期的字符串");

        index++;
        if (input[index] == '{' || input[index] == '[')
          continue;
        JString value = "";
        while (index < input._length()) {
          if (input[index] == ',' || input[index] == '}')
            break;
          value += input[index];
          index++;
        }

        if (index == input._length() - 1 && input[index]!='}') {
          // error
          plog("value ",value);
          plog("error : end");
          return ret;
        }
        op.Add(value);
      } else
        index++;
    }

    //for debug
    // for(int j=0;j<op.size;j++){
    //   plog(op[j]);
    // }

    int pos = 0;
    auto keyvalues = parseKeyValue(op, pos);
    return KeyValue(keyvalues);
  }

  static JAarry parseKeyValue(Linker<JString> op, int &index) {
    JAarry obj = JAarry();
    auto temp = op[index];
    if (temp.Equal("{")) {
      for (int j = index + 1; j < op.size; j++) {
        if (op[j].Equal("}")) {
          index = j;
          return obj;
        } else {
          if (op[j + 1].Equal("[")) {
            j += 1;
            obj.Add(KeyValue(op[j - 1], parseKeyValue(op, j)));
          } else {
            obj.Add(KeyValue(op[j], op[j + 1]));
            j += 1;
          }
        }
      }
    } else if (temp.Equal("[")) {
      for (int j = index + 1; j < op.size; j++) {
        if (op[j].Equal("]")) {
          index = j;
          return obj;
        } else {
          if (op[j].Equal("{")) {
            obj.Add(KeyValue(parseKeyValue(op, j)));
          } else {
            obj.Add(KeyValue(op[j], op[j + 1]));
            j += 1;
          }
        }
      }
    }

    return obj;
  }
};

} // namespace Utility
