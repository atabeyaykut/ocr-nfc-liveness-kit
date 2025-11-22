package org.bouncycastle.pqc.legacy.crypto.mceliece;

/* loaded from: classes2.dex */
public class McElieceCCA2Parameters extends McElieceParameters {
    private final String digest;

    public McElieceCCA2Parameters() {
        this(11, 50, "SHA-256");
    }

    public McElieceCCA2Parameters(int r22) {
        this(r22, "SHA-256");
    }

    public McElieceCCA2Parameters(int r22, int r32) {
        this(r22, r32, "SHA-256");
    }

    public McElieceCCA2Parameters(int r22, int r32, int r42) {
        this(r22, r32, r42, "SHA-256");
    }

    public McElieceCCA2Parameters(int r12, int r22, int r32, String str) {
        super(r12, r22, r32);
        this.digest = str;
    }

    public McElieceCCA2Parameters(int r12, int r22, String str) {
        super(r12, r22);
        this.digest = str;
    }

    public McElieceCCA2Parameters(int r12, String str) {
        super(r12);
        this.digest = str;
    }

    public McElieceCCA2Parameters(String str) {
        this(11, 50, str);
    }

    public String getDigest() {
        return this.digest;
    }
}
