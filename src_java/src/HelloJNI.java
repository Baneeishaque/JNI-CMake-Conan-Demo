public class HelloJNI {
    static {
        // Load native library hello.dll (Windows) or libhello.so (Unixes) at runtime. This library contains a native method called sayHello()
        System.loadLibrary("../src_cpp_lib/hello");
    }

    // Declare an instance native method sayHello() which receives no parameter and returns void
    private native void sayHello();

    // Test Driver
    public static void main(String[] args) {
        // Create an instance and invoke the native method
        new HelloJNI().sayHello();
    }
}
