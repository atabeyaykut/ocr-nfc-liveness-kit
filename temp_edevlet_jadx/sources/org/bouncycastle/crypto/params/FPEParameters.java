package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.util.RadixConverter;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public final class FPEParameters implements CipherParameters {
    private final KeyParameter key;
    private final RadixConverter radixConverter;
    private final byte[] tweak;
    private final boolean useInverse;

    public FPEParameters(KeyParameter keyParameter, int r32, byte[] bArr) {
        this(keyParameter, r32, bArr, false);
    }

    public FPEParameters(KeyParameter keyParameter, int r32, byte[] bArr, boolean z10) {
        this(keyParameter, new RadixConverter(r32), bArr, z10);
    }

    public FPEParameters(KeyParameter keyParameter, RadixConverter radixConverter, byte[] bArr, boolean z10) {
        this.key = keyParameter;
        this.radixConverter = radixConverter;
        this.tweak = Arrays.clone(bArr);
        this.useInverse = z10;
    }

    public KeyParameter getKey() {
        return this.key;
    }

    public int getRadix() {
        return this.radixConverter.getRadix();
    }

    public RadixConverter getRadixConverter() {
        return this.radixConverter;
    }

    public byte[] getTweak() {
        return Arrays.clone(this.tweak);
    }

    public boolean isUsingInverseFunction() {
        return this.useInverse;
    }
}
