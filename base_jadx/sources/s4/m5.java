package s4;

import java.io.IOException;

/* loaded from: classes.dex */
public final class m5 implements t6.d<h8> {

    /* renamed from: a, reason: collision with root package name */
    public static final m5 f15077a = new m5();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f15078b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f15079c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f15080d;

    static {
        y0 y0Var = y0.DEFAULT;
        f15078b = new t6.c("inferenceCommonLogEvent", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(1, y0Var))));
        f15079c = new t6.c("imageInfo", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(2, y0Var))));
        f15080d = new t6.c("recognizerOptions", androidx.appcompat.graphics.drawable.a.i(ab.b.h(z0.class, new v0(3, y0Var))));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        h8 h8Var = (h8) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f15078b, h8Var.f15024a);
        eVar2.a(f15079c, h8Var.f15025b);
        eVar2.a(f15080d, null);
    }
}
