package org.bouncycastle.crypto.constraints;

import java.util.Collections;
import java.util.Set;
import org.bouncycastle.crypto.CryptoServiceConstraintsException;
import org.bouncycastle.crypto.CryptoServiceProperties;

/* loaded from: classes2.dex */
public class BitsOfSecurityConstraint extends ServicesConstraint {
    private final int requiredBitsOfSecurity;

    public BitsOfSecurityConstraint(int r22) {
        super(Collections.EMPTY_SET);
        this.requiredBitsOfSecurity = r22;
    }

    public BitsOfSecurityConstraint(int r12, Set<String> set) {
        super(set);
        this.requiredBitsOfSecurity = r12;
    }

    @Override // org.bouncycastle.crypto.CryptoServicesConstraints
    public void check(CryptoServiceProperties cryptoServiceProperties) {
        if (!isException(cryptoServiceProperties.getServiceName()) && cryptoServiceProperties.bitsOfSecurity() < this.requiredBitsOfSecurity) {
            throw new CryptoServiceConstraintsException("service does not provide " + this.requiredBitsOfSecurity + " bits of security only " + cryptoServiceProperties.bitsOfSecurity());
        }
    }
}
