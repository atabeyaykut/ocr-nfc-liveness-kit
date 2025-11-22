package qa;

import kotlin.jvm.internal.h;
import ma.d1;
import ma.e1;

/* loaded from: classes2.dex */
public final class b extends e1 {

    /* renamed from: c, reason: collision with root package name */
    public static final b f13464c = new b();

    public b() {
        super("protected_and_package", true);
    }

    @Override // ma.e1
    public final Integer a(e1 visibility) {
        h.f(visibility, "visibility");
        if (h.a(this, visibility)) {
            return 0;
        }
        if (visibility == d1.b.f10207c) {
            return null;
        }
        n9.b bVar = d1.f10205a;
        return Integer.valueOf(visibility == d1.e.f10210c || visibility == d1.f.f10211c ? 1 : -1);
    }

    @Override // ma.e1
    public final String b() {
        return "protected/*protected and package*/";
    }

    @Override // ma.e1
    public final e1 c() {
        return d1.g.f10212c;
    }
}
