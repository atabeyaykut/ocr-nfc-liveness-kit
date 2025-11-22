package rc;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import rc.t;

/* loaded from: classes2.dex */
public final class o extends a0 {

    /* renamed from: d, reason: collision with root package name */
    public static final t f14498d;

    /* renamed from: b, reason: collision with root package name */
    public final List<String> f14499b;

    /* renamed from: c, reason: collision with root package name */
    public final List<String> f14500c;

    public static final class a {

        /* renamed from: c, reason: collision with root package name */
        public final Charset f14503c = null;

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f14501a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f14502b = new ArrayList();
    }

    static {
        t.f.getClass();
        f14498d = t.a.a(ShareTarget.ENCODING_TYPE_URL_ENCODED);
    }

    public o(ArrayList encodedNames, ArrayList encodedValues) {
        kotlin.jvm.internal.h.f(encodedNames, "encodedNames");
        kotlin.jvm.internal.h.f(encodedValues, "encodedValues");
        this.f14499b = sc.c.v(encodedNames);
        this.f14500c = sc.c.v(encodedValues);
    }

    @Override // rc.a0
    public final long a() {
        return d(null, true);
    }

    @Override // rc.a0
    public final t b() {
        return f14498d;
    }

    @Override // rc.a0
    public final void c(ed.f fVar) throws IOException {
        d(fVar, false);
    }

    public final long d(ed.f fVar, boolean z10) throws EOFException {
        ed.e buffer;
        if (z10) {
            buffer = new ed.e();
        } else {
            kotlin.jvm.internal.h.c(fVar);
            buffer = fVar.getBuffer();
        }
        List<String> list = this.f14499b;
        int size = list.size();
        for (int r22 = 0; r22 < size; r22++) {
            if (r22 > 0) {
                buffer.O(38);
            }
            buffer.i0(list.get(r22));
            buffer.O(61);
            buffer.i0(this.f14500c.get(r22));
        }
        if (!z10) {
            return 0L;
        }
        long j10 = buffer.f5304b;
        buffer.b();
        return j10;
    }
}
