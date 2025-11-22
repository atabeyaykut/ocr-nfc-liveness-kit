package org.bouncycastle.pqc.crypto.bike;

import org.bouncycastle.pqc.crypto.KEMParameters;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class BIKEParameters implements KEMParameters {
    public static final BIKEParameters bike128 = new BIKEParameters("bike128", 12323, 142, ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA, 256, 5, 3, 128);
    public static final BIKEParameters bike192 = new BIKEParameters("bike192", 24659, 206, 199, 256, 5, 3, 192);
    public static final BIKEParameters bike256 = new BIKEParameters("bike256", 40973, 274, 264, 256, 5, 3, 256);
    private BIKEEngine bikeEngine;
    private final int defaultKeySize;

    /* renamed from: l, reason: collision with root package name */
    private int f11848l;
    private String name;
    private int nbIter;

    /* renamed from: r, reason: collision with root package name */
    private int f11849r;

    /* renamed from: t, reason: collision with root package name */
    private int f11850t;
    private int tau;
    private int w;

    private BIKEParameters(String str, int r92, int r10, int r11, int r12, int r13, int r14, int r15) {
        this.name = str;
        this.f11849r = r92;
        this.w = r10;
        this.f11850t = r11;
        this.f11848l = r12;
        this.nbIter = r13;
        this.tau = r14;
        this.defaultKeySize = r15;
        this.bikeEngine = new BIKEEngine(r92, r10, r11, r12, r13, r14);
    }

    public BIKEEngine getEngine() {
        return this.bikeEngine;
    }

    public int getL() {
        return this.f11848l;
    }

    public int getLByte() {
        return this.f11848l / 8;
    }

    public String getName() {
        return this.name;
    }

    public int getNbIter() {
        return this.nbIter;
    }

    public int getR() {
        return this.f11849r;
    }

    public int getRByte() {
        return (this.f11849r + 7) / 8;
    }

    public int getSessionKeySize() {
        return this.defaultKeySize;
    }

    public int getT() {
        return this.f11850t;
    }

    public int getTau() {
        return this.tau;
    }

    public int getW() {
        return this.w;
    }
}
