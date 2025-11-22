package org.bouncycastle.jcajce.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Cipher;

/* loaded from: classes2.dex */
public class CipherOutputStream extends FilterOutputStream {
    private final Cipher cipher;
    private final byte[] oneByte;

    public CipherOutputStream(OutputStream outputStream, Cipher cipher) {
        super(outputStream);
        this.oneByte = new byte[1];
        this.cipher = cipher;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:0|(4:21|2|(1:4)|5)|19|11|(1:17)(1:18)) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        if (r0 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() throws javax.crypto.BadPaddingException, javax.crypto.IllegalBlockSizeException, java.io.IOException {
        /*
            r3 = this;
            javax.crypto.Cipher r0 = r3.cipher     // Catch: java.lang.Exception -> Lf java.security.GeneralSecurityException -> L1c
            byte[] r0 = r0.doFinal()     // Catch: java.lang.Exception -> Lf java.security.GeneralSecurityException -> L1c
            if (r0 == 0) goto Ld
            java.io.OutputStream r1 = r3.out     // Catch: java.lang.Exception -> Lf java.security.GeneralSecurityException -> L1c
            r1.write(r0)     // Catch: java.lang.Exception -> Lf java.security.GeneralSecurityException -> L1c
        Ld:
            r0 = 0
            goto L25
        Lf:
            r0 = move-exception
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r2 = "Error closing stream: "
            java.lang.String r0 = android.support.v4.media.a.e(r2, r0)
            r1.<init>(r0)
            goto L24
        L1c:
            r0 = move-exception
            org.bouncycastle.crypto.io.InvalidCipherTextIOException r1 = new org.bouncycastle.crypto.io.InvalidCipherTextIOException
            java.lang.String r2 = "Error during cipher finalisation"
            r1.<init>(r2, r0)
        L24:
            r0 = r1
        L25:
            r3.flush()     // Catch: java.io.IOException -> L2e
            java.io.OutputStream r1 = r3.out     // Catch: java.io.IOException -> L2e
            r1.close()     // Catch: java.io.IOException -> L2e
            goto L32
        L2e:
            r1 = move-exception
            if (r0 != 0) goto L32
            r0 = r1
        L32:
            if (r0 != 0) goto L35
            return
        L35:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.io.CipherOutputStream.close():void");
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int r32) throws IOException {
        byte[] bArr = this.oneByte;
        bArr[0] = (byte) r32;
        write(bArr, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int r32, int r42) throws IOException {
        byte[] bArrUpdate = this.cipher.update(bArr, r32, r42);
        if (bArrUpdate != null) {
            ((FilterOutputStream) this).out.write(bArrUpdate);
        }
    }
}
