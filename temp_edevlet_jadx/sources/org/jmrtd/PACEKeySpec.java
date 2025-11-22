package org.jmrtd;

import androidx.camera.camera2.internal.c;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import net.sf.scuba.util.Hex;
import org.jmrtd.protocol.PACEProtocol;

/* loaded from: classes2.dex */
public class PACEKeySpec implements AccessKeySpec {
    private static final long serialVersionUID = -7113246293247012560L;
    private byte[] key;
    private byte keyReference;

    public PACEKeySpec(String str, byte b10) {
        this(Util.getBytes(str), b10);
    }

    public PACEKeySpec(byte[] bArr, byte b10) {
        this.keyReference = b10;
        this.key = bArr;
    }

    public static PACEKeySpec createCANKey(String str) {
        return new PACEKeySpec(str, (byte) 2);
    }

    public static PACEKeySpec createMRZKey(BACKeySpec bACKeySpec) throws GeneralSecurityException {
        return new PACEKeySpec(PACEProtocol.computeKeySeedForPACE(bACKeySpec), (byte) 1);
    }

    public static PACEKeySpec createPINKey(String str) {
        return new PACEKeySpec(str, (byte) 3);
    }

    public static PACEKeySpec createPUKKey(String str) {
        return new PACEKeySpec(str, (byte) 4);
    }

    private static String keyReferenceToString(byte b10) {
        return b10 != 0 ? b10 != 1 ? b10 != 2 ? b10 != 3 ? b10 != 4 ? Integer.toString(b10) : "PUK" : "PIN" : "CAN" : "MRZ" : "NO";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PACEKeySpec pACEKeySpec = (PACEKeySpec) obj;
        return Arrays.equals(this.key, pACEKeySpec.key) && this.keyReference == pACEKeySpec.keyReference;
    }

    @Override // org.jmrtd.AccessKeySpec
    public String getAlgorithm() {
        return "PACE";
    }

    @Override // org.jmrtd.AccessKeySpec
    public byte[] getKey() {
        return this.key;
    }

    public byte getKeyReference() {
        return this.keyReference;
    }

    public int hashCode() {
        return ((Arrays.hashCode(this.key) + 31) * 31) + this.keyReference;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("PACEKeySpec [key: ");
        sb2.append(Hex.bytesToHexString(this.key));
        sb2.append(", keyReference: ");
        return c.h(sb2, keyReferenceToString(this.keyReference), "]");
    }
}
