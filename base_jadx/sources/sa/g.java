package sa;

import java.lang.annotation.Annotation;

/* loaded from: classes2.dex */
public final class g extends f implements cb.c {

    /* renamed from: b, reason: collision with root package name */
    public final Annotation f15344b;

    public g(lb.f fVar, Annotation annotation) {
        super(fVar);
        this.f15344b = annotation;
    }

    @Override // cb.c
    public final e a() {
        return new e(this.f15344b);
    }
}
