package ma;

import fc.i;
import java.util.List;

/* loaded from: classes2.dex */
public final class v<Type extends fc.i> extends y0<Type> {

    /* renamed from: a, reason: collision with root package name */
    public final lb.f f10248a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f10249b;

    public v(lb.f underlyingPropertyName, Type underlyingType) {
        kotlin.jvm.internal.h.f(underlyingPropertyName, "underlyingPropertyName");
        kotlin.jvm.internal.h.f(underlyingType, "underlyingType");
        this.f10248a = underlyingPropertyName;
        this.f10249b = underlyingType;
    }

    @Override // ma.y0
    public final List<l9.g<lb.f, Type>> a() {
        return b8.f.S(new l9.g(this.f10248a, this.f10249b));
    }

    public final String toString() {
        return "InlineClassRepresentation(underlyingPropertyName=" + this.f10248a + ", underlyingType=" + this.f10249b + ')';
    }
}
