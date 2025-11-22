package s2;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;
import t2.j;
import v2.m;
import v6.d;
import v6.e;

/* loaded from: classes.dex */
public final class b implements m {

    /* renamed from: a, reason: collision with root package name */
    public final d f14858a;

    /* renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f14859b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f14860c;

    /* renamed from: d, reason: collision with root package name */
    public final URL f14861d;

    /* renamed from: e, reason: collision with root package name */
    public final d3.a f14862e;
    public final d3.a f;

    /* renamed from: g, reason: collision with root package name */
    public final int f14863g;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final URL f14864a;

        /* renamed from: b, reason: collision with root package name */
        public final j f14865b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        public final String f14866c;

        public a(URL url, j jVar, @Nullable String str) {
            this.f14864a = url;
            this.f14865b = jVar;
            this.f14866c = str;
        }
    }

    /* renamed from: s2.b$b, reason: collision with other inner class name */
    public static final class C0242b {

        /* renamed from: a, reason: collision with root package name */
        public final int f14867a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        public final URL f14868b;

        /* renamed from: c, reason: collision with root package name */
        public final long f14869c;

        public C0242b(int r12, @Nullable URL url, long j10) {
            this.f14867a = r12;
            this.f14868b = url;
            this.f14869c = j10;
        }
    }

    public b(Context context, d3.a aVar, d3.a aVar2) {
        e eVar = new e();
        t2.b.f15562a.a(eVar);
        eVar.f18252d = true;
        this.f14858a = new d(eVar);
        this.f14860c = context;
        this.f14859b = (ConnectivityManager) context.getSystemService("connectivity");
        String str = s2.a.f14853c;
        try {
            this.f14861d = new URL(str);
            this.f14862e = aVar2;
            this.f = aVar;
            this.f14863g = 40000;
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException(androidx.browser.browseractions.b.e("Invalid url: ", str), e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:158:0x0440 A[Catch: IOException -> 0x0489, TryCatch #8 {IOException -> 0x0489, blocks: (B:76:0x029c, B:79:0x02ae, B:81:0x0300, B:89:0x0327, B:97:0x0381, B:156:0x043c, B:158:0x0440, B:161:0x044f, B:163:0x0454, B:165:0x0458, B:174:0x046e, B:176:0x0477, B:178:0x0480, B:98:0x038b, B:108:0x03be, B:127:0x03de, B:126:0x03db, B:128:0x03df, B:150:0x0410, B:155:0x0428, B:99:0x038f, B:101:0x0399, B:106:0x03b9, B:118:0x03d0, B:117:0x03cd, B:122:0x03d5), top: B:194:0x029c, inners: #9, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x044f A[Catch: IOException -> 0x0489, TryCatch #8 {IOException -> 0x0489, blocks: (B:76:0x029c, B:79:0x02ae, B:81:0x0300, B:89:0x0327, B:97:0x0381, B:156:0x043c, B:158:0x0440, B:161:0x044f, B:163:0x0454, B:165:0x0458, B:174:0x046e, B:176:0x0477, B:178:0x0480, B:98:0x038b, B:108:0x03be, B:127:0x03de, B:126:0x03db, B:128:0x03df, B:150:0x0410, B:155:0x0428, B:99:0x038f, B:101:0x0399, B:106:0x03b9, B:118:0x03d0, B:117:0x03cd, B:122:0x03d5), top: B:194:0x029c, inners: #9, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0458 A[Catch: IOException -> 0x0489, TryCatch #8 {IOException -> 0x0489, blocks: (B:76:0x029c, B:79:0x02ae, B:81:0x0300, B:89:0x0327, B:97:0x0381, B:156:0x043c, B:158:0x0440, B:161:0x044f, B:163:0x0454, B:165:0x0458, B:174:0x046e, B:176:0x0477, B:178:0x0480, B:98:0x038b, B:108:0x03be, B:127:0x03de, B:126:0x03db, B:128:0x03df, B:150:0x0410, B:155:0x0428, B:99:0x038f, B:101:0x0399, B:106:0x03b9, B:118:0x03d0, B:117:0x03cd, B:122:0x03d5), top: B:194:0x029c, inners: #9, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0454 A[EDGE_INSN: B:221:0x0454->B:163:0x0454 BREAK  A[LOOP:3: B:78:0x02aa->B:223:?], SYNTHETIC] */
    @Override // v2.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final v2.b a(v2.a r31) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s2.b.a(v2.a):v2.b");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0107  */
    @Override // v2.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final u2.h b(u2.n r7) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s2.b.b(u2.n):u2.h");
    }
}
