package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface Xof extends ExtendedDigest {
    int doFinal(byte[] bArr, int r22, int r32);

    int doOutput(byte[] bArr, int r22, int r32);
}
