#include <jni.h>      // JNI header provided by JDK
#include <iostream>   // C++ standard IO header
#include "HelloJNI.h" // Generated
using namespace std;

// Implementation of the native method sayHello()
JNIEXPORT void JNICALL Java_HelloJNI_sayHello(JNIEnv *env, jobject thisObj)
{
    cout << "Hello World from C++!" << endl;
    return;
}

int main(){
    return 0;
}
