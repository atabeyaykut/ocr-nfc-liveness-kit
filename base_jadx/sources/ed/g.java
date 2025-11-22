package ed;

import java.io.IOException;
import java.nio.channels.ReadableByteChannel;

/* loaded from: classes2.dex */
public interface g extends j0, ReadableByteChannel {
    long A(h0 h0Var) throws IOException;

    boolean G(h hVar) throws IOException;

    long H(h hVar) throws IOException;

    boolean I() throws IOException;

    String N(long j10) throws IOException;

    boolean Y(long j10) throws IOException;

    String a0() throws IOException;

    int b0() throws IOException;

    long g0() throws IOException;

    e getBuffer();

    int h0(x xVar) throws IOException;

    long j0(h hVar) throws IOException;

    void l0(long j10) throws IOException;

    long p0() throws IOException;

    d0 peek();

    byte readByte() throws IOException;

    int readInt() throws IOException;

    short readShort() throws IOException;

    void skip(long j10) throws IOException;

    h z(long j10) throws IOException;
}
