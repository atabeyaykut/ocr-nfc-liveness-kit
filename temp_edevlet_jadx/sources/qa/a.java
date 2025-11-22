package qa;

import kotlin.jvm.internal.h;
import ma.d1;
import ma.e1;

/* loaded from: classes2.dex */
public final class a extends e1 {

    /* renamed from: c, reason: collision with root package name */
    public static final a f13463c = new a();

    public a() {
        super("package", false);
    }

    @Override // ma.e1
    public final Integer a(e1 visibility) {
        h.f(visibility, "visibility");
        if (this != visibility) {
            n9.b bVar = d1.f10205a;
            ı = ((visibility == d1.e.f10210c || visibility == d1.f.f10211c) ? 1 : 0) != 0 ? 1 : -1;
        }
        return Integer.valueOf(ı);
    }

    @Override // ma.e1
    public final String b() {
        return "public/*package*/";
    }

    @Override // ma.e1
    public final e1 c() {
        return d1.g.f10212c;
    }
}
