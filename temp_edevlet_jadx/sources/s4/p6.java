package s4;

/* loaded from: classes.dex */
public enum p6 implements x0 {
    UNKNOWN_FORMAT(0),
    NV16(1),
    NV21(2),
    YV12(3),
    YUV_420_888(7),
    /* JADX INFO: Fake field, exist only in values array */
    JPEG(8),
    BITMAP(4),
    /* JADX INFO: Fake field, exist only in values array */
    CM_SAMPLE_BUFFER_REF(5),
    /* JADX INFO: Fake field, exist only in values array */
    UI_IMAGE(6),
    /* JADX INFO: Fake field, exist only in values array */
    CV_PIXEL_BUFFER_REF(9);


    /* renamed from: a, reason: collision with root package name */
    public final int f15131a;

    p6(int r32) {
        this.f15131a = r32;
    }

    @Override // s4.x0
    public final int a() {
        return this.f15131a;
    }
}
