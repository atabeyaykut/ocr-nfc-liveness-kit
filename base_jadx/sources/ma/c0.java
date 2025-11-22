package ma;

import fc.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class c0<Type extends fc.i> extends y0<Type> {

    /* renamed from: a, reason: collision with root package name */
    public final List<l9.g<lb.f, Type>> f10192a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<lb.f, Type> f10193b;

    public c0(ArrayList arrayList) {
        this.f10192a = arrayList;
        Map<lb.f, Type> mapS0 = m9.e0.S0(arrayList);
        if (!(mapS0.size() == arrayList.size())) {
            throw new IllegalArgumentException("Some properties have the same names".toString());
        }
        this.f10193b = mapS0;
    }

    @Override // ma.y0
    public final List<l9.g<lb.f, Type>> a() {
        return this.f10192a;
    }

    public final String toString() {
        return android.support.v4.media.a.j(new StringBuilder("MultiFieldValueClassRepresentation(underlyingPropertyNamesToTypes="), this.f10192a, ')');
    }
}
