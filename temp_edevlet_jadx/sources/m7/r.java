package m7;

import j7.u;
import j7.v;
import java.util.Calendar;
import java.util.GregorianCalendar;
import m7.o;

/* loaded from: classes2.dex */
public final class r implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f10132a = Calendar.class;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f10133b = GregorianCalendar.class;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f10134c;

    public r(o.s sVar) {
        this.f10134c = sVar;
    }

    @Override // j7.v
    public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
        Class<? super T> cls = aVar.f12844a;
        if (cls == this.f10132a || cls == this.f10133b) {
            return this.f10134c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f10132a.getName() + "+" + this.f10133b.getName() + ",adapter=" + this.f10134c + "]";
    }
}
