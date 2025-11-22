package org.bouncycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes2.dex */
public class ElGamalGenParameterSpec implements AlgorithmParameterSpec {
    private int primeSize;

    public ElGamalGenParameterSpec(int r12) {
        this.primeSize = r12;
    }

    public int getPrimeSize() {
        return this.primeSize;
    }
}
