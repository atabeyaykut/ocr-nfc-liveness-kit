package org.bouncycastle.pqc.crypto.ntruprime;

import androidx.core.view.PointerIconCompat;
import org.bouncycastle.pqc.crypto.KEMParameters;

/* loaded from: classes2.dex */
public class SNTRUPrimeParameters implements KEMParameters {
    private final String name;

    /* renamed from: p, reason: collision with root package name */
    private final int f11928p;
    private final int privateKeyBytes;
    private final int publicKeyBytes;

    /* renamed from: q, reason: collision with root package name */
    private final int f11929q;
    private final int roundedPolynomialBytes;
    private final int rqPolynomialBytes;
    private final int sharedKeyBytes;
    private final int w;
    public static final SNTRUPrimeParameters sntrup653 = new SNTRUPrimeParameters("sntrup653", 653, 4621, 288, 994, 865, 994, 1518, 32);
    public static final SNTRUPrimeParameters sntrup761 = new SNTRUPrimeParameters("sntrup761", 761, 4591, 286, 1158, PointerIconCompat.TYPE_CROSSHAIR, 1158, 1763, 32);
    public static final SNTRUPrimeParameters sntrup857 = new SNTRUPrimeParameters("sntrup857", 857, 5167, 322, 1322, 1152, 1322, 1999, 32);
    public static final SNTRUPrimeParameters sntrup953 = new SNTRUPrimeParameters("sntrup953", 953, 6343, 396, 1505, 1317, 1505, 2254, 32);
    public static final SNTRUPrimeParameters sntrup1013 = new SNTRUPrimeParameters("sntrup1013", PointerIconCompat.TYPE_ALL_SCROLL, 7177, 448, 1623, 1423, 1623, 2417, 32);
    public static final SNTRUPrimeParameters sntrup1277 = new SNTRUPrimeParameters("sntrup1277", 1277, 7879, 492, 2067, 1815, 2067, 3059, 32);

    private SNTRUPrimeParameters(String str, int r22, int r32, int r42, int r52, int r6, int r72, int r82, int r92) {
        this.name = str;
        this.f11928p = r22;
        this.f11929q = r32;
        this.w = r42;
        this.rqPolynomialBytes = r52;
        this.roundedPolynomialBytes = r6;
        this.publicKeyBytes = r72;
        this.privateKeyBytes = r82;
        this.sharedKeyBytes = r92;
    }

    public String getName() {
        return this.name;
    }

    public int getP() {
        return this.f11928p;
    }

    public int getPrivateKeyBytes() {
        return this.privateKeyBytes;
    }

    public int getPublicKeyBytes() {
        return this.publicKeyBytes;
    }

    public int getQ() {
        return this.f11929q;
    }

    public int getRoundedPolynomialBytes() {
        return this.roundedPolynomialBytes;
    }

    public int getRqPolynomialBytes() {
        return this.rqPolynomialBytes;
    }

    public int getSessionKeySize() {
        return this.sharedKeyBytes * 8;
    }

    public int getW() {
        return this.w;
    }
}
