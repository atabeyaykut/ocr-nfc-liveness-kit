package org.bouncycastle.crypto.constraints;

import java.util.Collections;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.crypto.CryptoServiceConstraintsException;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;

/* loaded from: classes2.dex */
public class LegacyBitsOfSecurityConstraint extends ServicesConstraint {
    private final int legacyRequiredBitsOfSecurity;
    private final int requiredBitsOfSecurity;

    /* renamed from: org.bouncycastle.crypto.constraints.LegacyBitsOfSecurityConstraint$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose;

        static {
            int[] r02 = new int[CryptoServicePurpose.values().length];
            $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose = r02;
            try {
                r02[CryptoServicePurpose.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose[CryptoServicePurpose.VERIFYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose[CryptoServicePurpose.DECRYPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose[CryptoServicePurpose.VERIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public LegacyBitsOfSecurityConstraint(int r22) {
        this(r22, 0);
    }

    public LegacyBitsOfSecurityConstraint(int r22, int r32) {
        super(Collections.EMPTY_SET);
        this.requiredBitsOfSecurity = r22;
        this.legacyRequiredBitsOfSecurity = r32;
    }

    public LegacyBitsOfSecurityConstraint(int r12, int r22, Set<String> set) {
        super(set);
        this.requiredBitsOfSecurity = r12;
        this.legacyRequiredBitsOfSecurity = r22;
    }

    public LegacyBitsOfSecurityConstraint(int r22, Set<String> set) {
        this(r22, 0, set);
    }

    @Override // org.bouncycastle.crypto.CryptoServicesConstraints
    public void check(CryptoServiceProperties cryptoServiceProperties) {
        if (isException(cryptoServiceProperties.getServiceName())) {
            return;
        }
        CryptoServicePurpose purpose = cryptoServiceProperties.getPurpose();
        int r12 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose[purpose.ordinal()];
        if (r12 != 1 && r12 != 2 && r12 != 3 && r12 != 4) {
            if (cryptoServiceProperties.bitsOfSecurity() >= this.requiredBitsOfSecurity) {
                return;
            }
            throw new CryptoServiceConstraintsException("service does not provide " + this.requiredBitsOfSecurity + " bits of security only " + cryptoServiceProperties.bitsOfSecurity());
        }
        if (cryptoServiceProperties.bitsOfSecurity() < this.legacyRequiredBitsOfSecurity) {
            throw new CryptoServiceConstraintsException("service does not provide " + this.legacyRequiredBitsOfSecurity + " bits of security only " + cryptoServiceProperties.bitsOfSecurity());
        }
        if (purpose != CryptoServicePurpose.ANY) {
            Logger logger = ServicesConstraint.LOG;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine("usage of legacy cryptography service for algorithm " + cryptoServiceProperties.getServiceName());
            }
        }
    }
}
