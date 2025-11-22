package org.bouncycastle.pqc.math.ntru.parameters;

import org.bouncycastle.pqc.math.ntru.HPSPolynomial;
import org.bouncycastle.pqc.math.ntru.Polynomial;

/* loaded from: classes2.dex */
public abstract class NTRUHPSParameterSet extends NTRUParameterSet {
    public NTRUHPSParameterSet(int r12, int r22, int r32, int r42, int r52) {
        super(r12, r22, r32, r42, r52);
    }

    @Override // org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet
    public Polynomial createPolynomial() {
        return new HPSPolynomial(this);
    }

    @Override // org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet
    public int sampleFgBytes() {
        return sampleFixedTypeBytes() + sampleIidBytes();
    }

    @Override // org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet
    public int sampleRmBytes() {
        return sampleFixedTypeBytes() + sampleIidBytes();
    }

    public int weight() {
        return (q() / 8) - 2;
    }
}
