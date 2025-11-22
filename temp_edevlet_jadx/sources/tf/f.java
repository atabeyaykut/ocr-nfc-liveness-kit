package tf;

import java.util.Locale;
import mc.n;
import x9.p;

/* loaded from: classes3.dex */
public final class f extends kotlin.jvm.internal.j implements p<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b, CharSequence, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public static final f f15687a = new f();

    public f() {
        super(2);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Boolean mo7invoke(tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b bVar, CharSequence charSequence) {
        tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b item = bVar;
        kotlin.jvm.internal.h.f(item, "item");
        String strValueOf = String.valueOf(item.f16399e);
        Locale locale = Locale.getDefault();
        kotlin.jvm.internal.h.e(locale, "getDefault()");
        String lowerCase = strValueOf.toLowerCase(locale);
        kotlin.jvm.internal.h.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        String strValueOf2 = String.valueOf(charSequence);
        Locale locale2 = Locale.getDefault();
        kotlin.jvm.internal.h.e(locale2, "getDefault()");
        String lowerCase2 = strValueOf2.toLowerCase(locale2);
        kotlin.jvm.internal.h.e(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
        return Boolean.valueOf(n.G(lowerCase, lowerCase2, false));
    }
}
