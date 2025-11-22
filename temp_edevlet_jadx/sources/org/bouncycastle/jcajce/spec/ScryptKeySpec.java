package org.bouncycastle.jcajce.spec;

import java.security.spec.KeySpec;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class ScryptKeySpec implements KeySpec {
    private final int blockSize;
    private final int costParameter;
    private final int keySize;
    private final int parallelizationParameter;
    private final char[] password;
    private final byte[] salt;

    public ScryptKeySpec(char[] cArr, byte[] bArr, int r32, int r42, int r52, int r6) {
        this.password = cArr;
        this.salt = Arrays.clone(bArr);
        this.costParameter = r32;
        this.blockSize = r42;
        this.parallelizationParameter = r52;
        this.keySize = r6;
    }

    public int getBlockSize() {
        return this.blockSize;
    }

    public int getCostParameter() {
        return this.costParameter;
    }

    public int getKeyLength() {
        return this.keySize;
    }

    public int getParallelizationParameter() {
        return this.parallelizationParameter;
    }

    public char[] getPassword() {
        return this.password;
    }

    public byte[] getSalt() {
        return Arrays.clone(this.salt);
    }
}
