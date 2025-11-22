package m7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes2.dex */
public final class k extends u<Date> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f10088b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f10089a = new SimpleDateFormat("MMM d, yyyy");

    public static class a implements v {
        @Override // j7.v
        public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
            if (aVar.f12844a == Date.class) {
                return new k();
            }
            return null;
        }
    }

    @Override // j7.u
    public final Date a(q7.a aVar) throws IOException {
        synchronized (this) {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            try {
                return new Date(this.f10089a.parse(aVar.v()).getTime());
            } catch (ParseException e10) {
                throw new j7.s(e10);
            }
        }
    }

    @Override // j7.u
    public final void b(q7.b bVar, Date date) throws IOException {
        Date date2 = date;
        synchronized (this) {
            bVar.q(date2 == null ? null : this.f10089a.format((java.util.Date) date2));
        }
    }
}
