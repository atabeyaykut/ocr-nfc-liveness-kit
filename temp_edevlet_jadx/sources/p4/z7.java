package p4;

/* loaded from: classes.dex */
public enum z7 implements k1 {
    FORMAT_UNKNOWN(0),
    FORMAT_CODE_128(1),
    FORMAT_CODE_39(2),
    FORMAT_CODE_93(4),
    FORMAT_CODABAR(8),
    FORMAT_DATA_MATRIX(16),
    FORMAT_EAN_13(32),
    FORMAT_EAN_8(64),
    FORMAT_ITF(128),
    FORMAT_QR_CODE(256),
    FORMAT_UPC_A(512),
    FORMAT_UPC_E(1024),
    FORMAT_PDF417(2048),
    FORMAT_AZTEC(4096);


    /* renamed from: a, reason: collision with root package name */
    public final int f12825a;

    z7(int r32) {
        this.f12825a = r32;
    }

    @Override // p4.k1
    public final int a() {
        return this.f12825a;
    }
}
