package org.bouncycastle.crypto.params;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.math.ec.rfc8032.Ed448;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes2.dex */
public final class Ed448PublicKeyParameters extends AsymmetricKeyParameter {
    public static final int KEY_SIZE = 57;
    private final Ed448.PublicPoint publicPoint;

    public Ed448PublicKeyParameters(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[57];
        if (57 != Streams.readFully(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed448 public key");
        }
        this.publicPoint = parse(bArr, 0);
    }

    public Ed448PublicKeyParameters(Ed448.PublicPoint publicPoint) {
        super(false);
        if (publicPoint == null) {
            throw new NullPointerException("'publicPoint' cannot be null");
        }
        this.publicPoint = publicPoint;
    }

    public Ed448PublicKeyParameters(byte[] bArr) {
        this(validate(bArr), 0);
    }

    public Ed448PublicKeyParameters(byte[] bArr, int r32) {
        super(false);
        this.publicPoint = parse(bArr, r32);
    }

    private static Ed448.PublicPoint parse(byte[] bArr, int r12) {
        Ed448.PublicPoint publicPointValidatePublicKeyPartialExport = Ed448.validatePublicKeyPartialExport(bArr, r12);
        if (publicPointValidatePublicKeyPartialExport != null) {
            return publicPointValidatePublicKeyPartialExport;
        }
        throw new IllegalArgumentException("invalid public key");
    }

    private static byte[] validate(byte[] bArr) {
        if (bArr.length == 57) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 57");
    }

    public void encode(byte[] bArr, int r32) {
        Ed448.encodePublicPoint(this.publicPoint, bArr, r32);
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[57];
        encode(bArr, 0);
        return bArr;
    }

    public boolean verify(int r82, byte[] bArr, byte[] bArr2, int r11, int r12, byte[] bArr3, int r14) {
        if (r82 == 0) {
            if (bArr == null) {
                throw new NullPointerException("'ctx' cannot be null");
            }
            if (bArr.length <= 255) {
                return Ed448.verify(bArr3, r14, this.publicPoint, bArr, bArr2, r11, r12);
            }
            throw new IllegalArgumentException("ctx");
        }
        if (r82 != 1) {
            throw new IllegalArgumentException("algorithm");
        }
        if (bArr == null) {
            throw new NullPointerException("'ctx' cannot be null");
        }
        if (bArr.length > 255) {
            throw new IllegalArgumentException("ctx");
        }
        if (64 == r12) {
            return Ed448.verifyPrehash(bArr3, r14, this.publicPoint, bArr, bArr2, r11);
        }
        throw new IllegalArgumentException("msgLen");
    }
}
