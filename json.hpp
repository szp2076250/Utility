#pragma once
#include "pString.hpp"
#include "Contain.h"

namespace Utility
{
    using namespace Contain;

    using JString = AString;

    template<class T>
    struct is_string{
        static char is_str(const char *);
        static char is_str(pobject<const char *>);
        static char is_str(pobject<AString>);
        static double is_str(...);
        static T t;
        enum{ value = sizeof(is_str(t))==sizeof(char)};
    };

    struct KeyValue{
        JString key;
        JString value;
        AString __tvalue;
        Linker<KeyValue> list;
        bool bstr;
        bool blist;

        template<typename PValue>
        KeyValue(JString _key,PValue _value):key(_key){
            bstr = is_string<PValue>::value;
            __tvalue = typeid(PValue).name();
            value = _value;
            blist = false;
        }

        KeyValue(JString _key,Linker<KeyValue> _value):key(_key){
            __tvalue = typeid(Linker<KeyValue>).name();
            list  = _value;
            blist = true;
        }

        JString SerialList(){
            JString temp = "{";
            for(int index=0;index<list.size;index++){
                auto item = list[index];
                temp+=item.Serial();
                if(index!=list.size-1)
                temp+=",";
            }
            temp+="}";
            return temp;
        }

        JString Serial(){
            JString temp = "\"";
            temp+=key;
            temp+="\":";
            if(blist){
                temp+="[";
                temp+=SerialList();
                temp+="]";
            }else{
                if(bstr){
                    temp+="\"";
                    temp+=value;
                    temp+="\"";
                }else
                    temp+=value;
            }
            return temp;
        }
    };

    class JObject{
    public:
        Linker<KeyValue > list; 

        void Add(KeyValue obj){
            list.Add(move(obj));
        }

        template<class T>
        void Set(JString key,KeyValue obj){
            for(int index=0;index<list.size;index++){
                if(key == list[index].key){
                    list[index] = obj;
                }
            }
        }

        template<typename TV>
        auto Get(TV key){
            for(int index=0;index<list.size;index++){
                if(key == list[index]){
                    return list[index].value; 
                }
            }
        }

        JString Serial(){
            JString temp = "{";
            for(int index=0;index<list.size;index++){
                auto item = list[index];
                temp+=item.Serial();
                if(index!=list.size-1)
                    temp+=",";
            }
            temp += "}";
            return temp;
        }
    };

    class JArray{
        JString key;
        Linker<JObject> list;
    };

} 
