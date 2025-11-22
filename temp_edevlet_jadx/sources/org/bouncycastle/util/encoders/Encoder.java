package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public interface Encoder {
    int decode(String str, OutputStream outputStream) throws IOException;

    int decode(byte[] bArr, int r22, int r32, OutputStream outputStream) throws IOException;

    int encode(byte[] bArr, int r22, int r32, OutputStream outputStream) throws IOException;

    int getEncodedLength(int r12);

    int getMaxDecodedLength(int r12);
}
