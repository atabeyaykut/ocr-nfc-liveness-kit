package na;

import c5.y;
import cc.e0;
import cc.m0;
import java.util.Map;
import ma.r0;

/* loaded from: classes2.dex */
public final class j implements c {

    /* renamed from: a, reason: collision with root package name */
    public final ja.k f10655a;

    /* renamed from: b, reason: collision with root package name */
    public final lb.c f10656b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<lb.f, qb.g<?>> f10657c;

    /* renamed from: d, reason: collision with root package name */
    public final l9.e f10658d;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<m0> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final m0 invoke() {
            j jVar = j.this;
            return jVar.f10655a.j(jVar.f10656b).q();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j(ja.k kVar, lb.c fqName, Map<lb.f, ? extends qb.g<?>> map) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        this.f10655a = kVar;
        this.f10656b = fqName;
        this.f10657c = map;
        this.f10658d = y.v(2, new a());
    }

    @Override // na.c
    public final Map<lb.f, qb.g<?>> a() {
        return this.f10657c;
    }

    @Override // na.c
    public final lb.c d() {
        return this.f10656b;
    }

    @Override // na.c
    public final r0 getSource() {
        return r0.f10243a;
    }

    @Override // na.c
    public final e0 getType() {
        Object value = this.f10658d.getValue();
        kotlin.jvm.internal.h.e(value, "<get-type>(...)");
        return (e0) value;
    }
}
