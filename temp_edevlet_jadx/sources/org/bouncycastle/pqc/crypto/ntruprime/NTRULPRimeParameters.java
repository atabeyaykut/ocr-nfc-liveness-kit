package org.bouncycastle.pqc.crypto.ntruprime;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import org.bouncycastle.pqc.crypto.KEMParameters;

/* loaded from: classes2.dex */
public class NTRULPRimeParameters implements KEMParameters {
    private final int delta;
    private final String name;

    /* renamed from: p, reason: collision with root package name */
    private final int f11926p;
    private final int privateKeyBytes;
    private final int publicKeyBytes;

    /* renamed from: q, reason: collision with root package name */
    private final int f11927q;
    private final int roundedPolynomialBytes;
    private final int sharedKeyBytes;
    private final int tau0;
    private final int tau1;
    private final int tau2;
    private final int tau3;
    private final int w;
    public static final NTRULPRimeParameters ntrulpr653 = new NTRULPRimeParameters("ntrulpr653", 653, 4621, 252, 289, 2175, 113, 2031, 290, 865, 897, 1125, 32);
    public static final NTRULPRimeParameters ntrulpr761 = new NTRULPRimeParameters("ntrulpr761", 761, 4591, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 292, 2156, 114, 2007, 287, PointerIconCompat.TYPE_CROSSHAIR, 1039, 1294, 32);
    public static final NTRULPRimeParameters ntrulpr857 = new NTRULPRimeParameters("ntrulpr857", 857, 5167, 281, 329, 2433, 101, 2265, 324, 1152, 1184, 1463, 32);
    public static final NTRULPRimeParameters ntrulpr953 = new NTRULPRimeParameters("ntrulpr953", 953, 6343, 345, 404, 2997, 82, 2798, 400, 1317, 1349, 1652, 32);
    public static final NTRULPRimeParameters ntrulpr1013 = new NTRULPRimeParameters("ntrulpr1013", PointerIconCompat.TYPE_ALL_SCROLL, 7177, 392, 450, 3367, 73, 3143, 449, 1423, 1455, 1773, 32);
    public static final NTRULPRimeParameters ntrulpr1277 = new NTRULPRimeParameters("ntrulpr1277", 1277, 7879, 429, TypedValues.PositionType.TYPE_DRAWPATH, 3724, 66, 3469, 496, 1815, 1847, 2231, 32);

    private NTRULPRimeParameters(String str, int r22, int r32, int r42, int r52, int r6, int r72, int r82, int r92, int r10, int r11, int r12, int r13) {
        this.name = str;
        this.f11926p = r22;
        this.f11927q = r32;
        this.w = r42;
        this.delta = r52;
        this.tau0 = r6;
        this.tau1 = r72;
        this.tau2 = r82;
        this.tau3 = r92;
        this.roundedPolynomialBytes = r10;
        this.publicKeyBytes = r11;
        this.privateKeyBytes = r12;
        this.sharedKeyBytes = r13;
    }

    public int getDelta() {
        return this.delta;
    }

    public String getName() {
        return this.name;
    }

    public int getP() {
        return this.f11926p;
    }

    public int getPrivateKeyBytes() {
        return this.privateKeyBytes;
    }

    public int getPublicKeyBytes() {
        return this.publicKeyBytes;
    }

    public int getQ() {
        return this.f11927q;
    }

    public int getRoundedPolynomialBytes() {
        return this.roundedPolynomialBytes;
    }

    public int getSessionKeySize() {
        return this.sharedKeyBytes * 8;
    }

    public int getTau0() {
        return this.tau0;
    }

    public int getTau1() {
        return this.tau1;
    }

    public int getTau2() {
        return this.tau2;
    }

    public int getTau3() {
        return this.tau3;
    }

    public int getW() {
        return this.w;
    }
}
