package m7;

import j7.u;
import j7.v;
import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes2.dex */
public final class l extends u<Time> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f10090b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f10091a = new SimpleDateFormat("hh:mm:ss a");

    public static class a implements v {
        @Override // j7.v
        public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
            if (aVar.f12844a == Time.class) {
                return new l();
            }
            return null;
        }
    }

    @Override // j7.u
    public final Time a(q7.a aVar) throws IOException {
        synchronized (this) {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            try {
                return new Time(this.f10091a.parse(aVar.v()).getTime());
            } catch (ParseException e10) {
                throw new j7.s(e10);
            }
        }
    }

    @Override // j7.u
    public final void b(q7.b bVar, Time time) throws IOException {
        Time time2 = time;
        synchronized (this) {
            bVar.q(time2 == null ? null : this.f10091a.format((Date) time2));
        }
    }
}
