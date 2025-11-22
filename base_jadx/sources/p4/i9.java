package p4;

/* loaded from: classes.dex */
public enum i9 implements k1 {
    /* JADX INFO: Fake field, exist only in values array */
    UNRECOGNIZED(0),
    CODE_128(1),
    CODE_39(2),
    CODE_93(3),
    CODABAR(4),
    DATA_MATRIX(5),
    EAN_13(6),
    EAN_8(7),
    ITF(8),
    QR_CODE(9),
    UPC_A(10),
    UPC_E(11),
    PDF417(12),
    AZTEC(13),
    /* JADX INFO: Fake field, exist only in values array */
    DATABAR(14),
    /* JADX INFO: Fake field, exist only in values array */
    TEZ_CODE(16);


    /* renamed from: a, reason: collision with root package name */
    public final int f12415a;

    i9(int r32) {
        this.f12415a = r32;
    }

    @Override // p4.k1
    public final int a() {
        return this.f12415a;
    }
}
