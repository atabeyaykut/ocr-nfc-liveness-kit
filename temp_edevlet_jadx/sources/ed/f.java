package ed;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes2.dex */
public interface f extends h0, WritableByteChannel {
    f C(h hVar) throws IOException;

    f S(String str) throws IOException;

    f U(long j10) throws IOException;

    f X(int r12, int r22, String str) throws IOException;

    @Override // ed.h0, java.io.Flushable
    void flush() throws IOException;

    e getBuffer();

    f m0(long j10) throws IOException;

    f write(byte[] bArr) throws IOException;

    f write(byte[] bArr, int r22, int r32) throws IOException;

    f writeByte(int r12) throws IOException;

    f writeInt(int r12) throws IOException;

    f writeShort(int r12) throws IOException;
}
