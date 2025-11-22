package qb;

import cc.e0;
import ma.b0;

/* loaded from: classes2.dex */
public final class w extends g<String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(String value) {
        super(value);
        kotlin.jvm.internal.h.f(value, "value");
    }

    @Override // qb.g
    public final e0 a(b0 module) {
        kotlin.jvm.internal.h.f(module, "module");
        return module.m().u();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // qb.g
    public final String toString() {
        return android.support.v4.media.a.h(new StringBuilder("\""), (String) this.f13469a, '\"');
    }
}
