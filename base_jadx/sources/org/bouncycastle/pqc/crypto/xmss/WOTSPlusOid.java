package org.bouncycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
final class WOTSPlusOid implements XMSSOid {
    private static final Map<String, WOTSPlusOid> oidLookupTable;
    private final int oid;
    private final String stringRepresentation;

    static {
        HashMap map = new HashMap();
        map.put(createKey("SHA-256", 32, 16, 67), new WOTSPlusOid(16777217, "WOTSP_SHA2-256_W16"));
        map.put(createKey("SHA-512", 64, 16, ISO781611.CREATION_DATE_AND_TIME_TAG), new WOTSPlusOid(33554434, "WOTSP_SHA2-512_W16"));
        map.put(createKey("SHAKE128", 32, 16, 67), new WOTSPlusOid(50331651, "WOTSP_SHAKE128_W16"));
        map.put(createKey("SHAKE256", 64, 16, ISO781611.CREATION_DATE_AND_TIME_TAG), new WOTSPlusOid(67108868, "WOTSP_SHAKE256_W16"));
        oidLookupTable = Collections.unmodifiableMap(map);
    }

    private WOTSPlusOid(int r12, String str) {
        this.oid = r12;
        this.stringRepresentation = str;
    }

    private static String createKey(String str, int r22, int r32, int r42) {
        if (str == null) {
            throw new NullPointerException("algorithmName == null");
        }
        return str + "-" + r22 + "-" + r32 + "-" + r42;
    }

    public static WOTSPlusOid lookup(String str, int r22, int r32, int r42) {
        if (str != null) {
            return oidLookupTable.get(createKey(str, r22, r32, r42));
        }
        throw new NullPointerException("algorithmName == null");
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public int getOid() {
        return this.oid;
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.XMSSOid
    public String toString() {
        return this.stringRepresentation;
    }
}
