package m7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class c extends u<Date> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f10053b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10054a;

    public static class a implements v {
        @Override // j7.v
        public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
            if (aVar.f12844a == Date.class) {
                return new c();
            }
            return null;
        }
    }

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f10054a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (l7.g.f9420a >= 9) {
            arrayList.add(new SimpleDateFormat("MMM d, yyyy h:mm:ss a", locale));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
    
        r3 = n7.a.b(r3, new java.text.ParsePosition(0));
     */
    @Override // j7.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Date a(q7.a r3) throws java.io.IOException {
        /*
            r2 = this;
            int r0 = r3.B()
            r1 = 9
            if (r0 != r1) goto Ld
            r3.s()
            r3 = 0
            goto L34
        Ld:
            java.lang.String r3 = r3.v()
            monitor-enter(r2)
            java.util.ArrayList r0 = r2.f10054a     // Catch: java.lang.Throwable -> L3c
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L3c
        L18:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L29
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L3c
            java.text.DateFormat r1 = (java.text.DateFormat) r1     // Catch: java.lang.Throwable -> L3c
            java.util.Date r3 = r1.parse(r3)     // Catch: java.text.ParseException -> L18 java.lang.Throwable -> L3c
            goto L33
        L29:
            java.text.ParsePosition r0 = new java.text.ParsePosition     // Catch: java.text.ParseException -> L35 java.lang.Throwable -> L3c
            r1 = 0
            r0.<init>(r1)     // Catch: java.text.ParseException -> L35 java.lang.Throwable -> L3c
            java.util.Date r3 = n7.a.b(r3, r0)     // Catch: java.text.ParseException -> L35 java.lang.Throwable -> L3c
        L33:
            monitor-exit(r2)
        L34:
            return r3
        L35:
            r0 = move-exception
            j7.s r1 = new j7.s     // Catch: java.lang.Throwable -> L3c
            r1.<init>(r3, r0)     // Catch: java.lang.Throwable -> L3c
            throw r1     // Catch: java.lang.Throwable -> L3c
        L3c:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: m7.c.a(q7.a):java.lang.Object");
    }

    @Override // j7.u
    public final void b(q7.b bVar, Date date) throws IOException {
        Date date2 = date;
        synchronized (this) {
            if (date2 == null) {
                bVar.j();
            } else {
                bVar.q(((DateFormat) this.f10054a.get(0)).format(date2));
            }
        }
    }
}
