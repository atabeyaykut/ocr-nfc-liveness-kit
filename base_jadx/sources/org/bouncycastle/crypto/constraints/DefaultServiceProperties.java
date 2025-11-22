package org.bouncycastle.crypto.constraints;

import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;

/* loaded from: classes2.dex */
public class DefaultServiceProperties implements CryptoServiceProperties {
    private final String algorithm;
    private final int bitsOfSecurity;
    private final Object params;
    private final CryptoServicePurpose purpose;

    public DefaultServiceProperties(String str, int r42) {
        this(str, r42, null, CryptoServicePurpose.ANY);
    }

    public DefaultServiceProperties(String str, int r32, Object obj) {
        this(str, r32, obj, CryptoServicePurpose.ANY);
    }

    public DefaultServiceProperties(String str, int r22, Object obj, CryptoServicePurpose cryptoServicePurpose) {
        this.algorithm = str;
        this.bitsOfSecurity = r22;
        this.params = obj;
        if (obj instanceof CryptoServicePurpose) {
            throw new IllegalArgumentException("params should not be CryptoServicePurpose");
        }
        this.purpose = cryptoServicePurpose;
    }

    @Override // org.bouncycastle.crypto.CryptoServiceProperties
    public int bitsOfSecurity() {
        return this.bitsOfSecurity;
    }

    @Override // org.bouncycastle.crypto.CryptoServiceProperties
    public Object getParams() {
        return this.params;
    }

    @Override // org.bouncycastle.crypto.CryptoServiceProperties
    public CryptoServicePurpose getPurpose() {
        return this.purpose;
    }

    @Override // org.bouncycastle.crypto.CryptoServiceProperties
    public String getServiceName() {
        return this.algorithm;
    }
}
