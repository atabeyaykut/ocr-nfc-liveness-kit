package i7;

import android.content.Context;
import c6.d;
import c6.h;
import c6.o;
import c6.y;

/* loaded from: classes2.dex */
public final class f {

    public interface a<T> {
        String a(Context context);
    }

    public static c6.d<?> a(String str, String str2) {
        final i7.a aVar = new i7.a(str, str2);
        d.a aVarA = c6.d.a(d.class);
        aVarA.f2196d = 1;
        aVarA.f2197e = new h() { // from class: c6.c
            @Override // c6.h
            public final Object i(y yVar) {
                return aVar;
            }
        };
        return aVarA.b();
    }

    public static c6.d<?> b(final String str, final a<Context> aVar) {
        d.a aVarA = c6.d.a(d.class);
        aVarA.f2196d = 1;
        aVarA.a(new o(1, 0, Context.class));
        aVarA.f2197e = new h() { // from class: i7.e
            @Override // c6.h
            public final Object i(y yVar) {
                return new a(str, aVar.a((Context) yVar.a(Context.class)));
            }
        };
        return aVarA.b();
    }
}
