package org.bouncycastle.jcajce.spec;

import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class AEADParameterSpec extends IvParameterSpec {
    private final byte[] associatedData;
    private final int macSizeInBits;

    public AEADParameterSpec(byte[] bArr, int r32) {
        this(bArr, r32, null);
    }

    public AEADParameterSpec(byte[] bArr, int r22, byte[] bArr2) {
        super(bArr);
        this.macSizeInBits = r22;
        this.associatedData = Arrays.clone(bArr2);
    }

    public byte[] getAssociatedData() {
        return Arrays.clone(this.associatedData);
    }

    public int getMacSizeInBits() {
        return this.macSizeInBits;
    }

    public byte[] getNonce() {
        return getIV();
    }
}
