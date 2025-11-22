package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.bouncycastle.util.Encodable;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes2.dex */
class LMOtsSignature implements Encodable {
    private final byte[] C;
    private final LMOtsParameters type;

    /* renamed from: y, reason: collision with root package name */
    private final byte[] f11916y;

    public LMOtsSignature(LMOtsParameters lMOtsParameters, byte[] bArr, byte[] bArr2) {
        this.type = lMOtsParameters;
        this.C = bArr;
        this.f11916y = bArr2;
    }

    public static LMOtsSignature getInstance(Object obj) throws Throwable {
        if (obj instanceof LMOtsSignature) {
            return (LMOtsSignature) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            LMOtsParameters parametersForType = LMOtsParameters.getParametersForType(dataInputStream.readInt());
            byte[] bArr = new byte[parametersForType.getN()];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[parametersForType.getN() * parametersForType.getP()];
            dataInputStream.readFully(bArr2);
            return new LMOtsSignature(parametersForType, bArr, bArr2);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return getInstance(Streams.readAll((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                LMOtsSignature lMOtsSignature = getInstance(dataInputStream3);
                dataInputStream3.close();
                return lMOtsSignature;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream2 = dataInputStream3;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LMOtsSignature lMOtsSignature = (LMOtsSignature) obj;
        LMOtsParameters lMOtsParameters = this.type;
        if (lMOtsParameters == null ? lMOtsSignature.type != null : !lMOtsParameters.equals(lMOtsSignature.type)) {
            return false;
        }
        if (Arrays.equals(this.C, lMOtsSignature.C)) {
            return Arrays.equals(this.f11916y, lMOtsSignature.f11916y);
        }
        return false;
    }

    public byte[] getC() {
        return this.C;
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return Composer.compose().u32str(this.type.getType()).bytes(this.C).bytes(this.f11916y).build();
    }

    public LMOtsParameters getType() {
        return this.type;
    }

    public byte[] getY() {
        return this.f11916y;
    }

    public int hashCode() {
        LMOtsParameters lMOtsParameters = this.type;
        return Arrays.hashCode(this.f11916y) + ((Arrays.hashCode(this.C) + ((lMOtsParameters != null ? lMOtsParameters.hashCode() : 0) * 31)) * 31);
    }
}
