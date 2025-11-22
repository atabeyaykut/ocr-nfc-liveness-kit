package org.bouncycastle.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes2.dex */
public class TLSRSAPremasterSecretParameterSpec implements AlgorithmParameterSpec {
    private final int protocolVersion;

    public TLSRSAPremasterSecretParameterSpec(int r12) {
        this.protocolVersion = r12;
    }

    public int getProtocolVersion() {
        return this.protocolVersion;
    }
}
