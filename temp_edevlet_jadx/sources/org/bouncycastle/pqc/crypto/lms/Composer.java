package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.util.Encodable;

/* loaded from: classes2.dex */
public class Composer {
    private final ByteArrayOutputStream bos = new ByteArrayOutputStream();

    private Composer() {
    }

    public static Composer compose() {
        return new Composer();
    }

    public Composer bool(boolean z10) {
        this.bos.write(z10 ? 1 : 0);
        return this;
    }

    public byte[] build() {
        return this.bos.toByteArray();
    }

    public Composer bytes(Encodable encodable) throws IOException {
        try {
            this.bos.write(encodable.getEncoded());
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public Composer bytes(byte[] bArr) throws IOException {
        try {
            this.bos.write(bArr);
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public Composer bytes(byte[] bArr, int r32, int r42) {
        try {
            this.bos.write(bArr, r32, r42);
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public Composer bytes(Encodable[] encodableArr) throws IOException {
        try {
            for (Encodable encodable : encodableArr) {
                this.bos.write(encodable.getEncoded());
            }
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public Composer bytes(byte[][] bArr) throws IOException {
        try {
            for (byte[] bArr2 : bArr) {
                this.bos.write(bArr2);
            }
            return this;
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public Composer bytes(byte[][] bArr, int r42, int r52) throws IOException {
        while (r42 != r52) {
            try {
                this.bos.write(bArr[r42]);
                r42++;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage(), e10);
            }
        }
        return this;
    }

    public Composer pad(int r22, int r32) {
        while (r32 >= 0) {
            try {
                this.bos.write(r22);
                r32--;
            } catch (Exception e10) {
                throw new RuntimeException(e10.getMessage(), e10);
            }
        }
        return this;
    }

    public Composer padUntil(int r22, int r32) {
        while (this.bos.size() < r32) {
            this.bos.write(r22);
        }
        return this;
    }

    public Composer u16str(int r32) {
        int r33 = r32 & 65535;
        this.bos.write((byte) (r33 >>> 8));
        this.bos.write((byte) r33);
        return this;
    }

    public Composer u32str(int r32) {
        this.bos.write((byte) (r32 >>> 24));
        this.bos.write((byte) (r32 >>> 16));
        this.bos.write((byte) (r32 >>> 8));
        this.bos.write((byte) r32);
        return this;
    }

    public Composer u64str(long j10) {
        u32str((int) (j10 >>> 32));
        u32str((int) j10);
        return this;
    }
}
