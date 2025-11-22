package org.jmrtd.cbeff;

import org.jmrtd.cbeff.BiometricDataBlock;

/* loaded from: classes2.dex */
public class SimpleCBEFFInfo<B extends BiometricDataBlock> implements CBEFFInfo {
    private B bdb;

    public SimpleCBEFFInfo(B b10) {
        this.bdb = b10;
    }

    public B getBiometricDataBlock() {
        return this.bdb;
    }
}
