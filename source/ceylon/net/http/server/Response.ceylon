import ceylon.net.http { Header }
import ceylon.io.buffer { ByteBuffer }
"An object to assist sending response to the client."
by("Matej Lazar")
shared interface Response {

    "Writes string to the response."
    shared formal void writeString(String string);

    shared formal void writeStringAsynchronous(String string, SendCallback sendCallback);

    "Writes bytes to the response."
    shared formal void writeBytes(Array<Integer> bytes);

    shared formal void writeBytesAsynchronous(Array<Integer> bytes, SendCallback sendCallback);

    "Writes ByteBuffer to the response."
    shared formal void writeByteBuffer(ByteBuffer buffer);

    shared formal void writeByteBufferAsynchronous(ByteBuffer byteBuffer, SendCallback sendCallback);

    "Add a header to response. Multiple headers can have the same name.
     Throws Exception if headers have been already sent to client."
    shared formal void addHeader(Header header);

    "The HTTP status code of the response."
    shared formal variable Integer responseStatus;
}
