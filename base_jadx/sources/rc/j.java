package rc;

import java.util.Date;
import java.util.regex.Pattern;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final String f14483a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14484b;

    /* renamed from: c, reason: collision with root package name */
    public final long f14485c;

    /* renamed from: d, reason: collision with root package name */
    public final String f14486d;

    /* renamed from: e, reason: collision with root package name */
    public final String f14487e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f14488g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f14489h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f14490i;

    /* renamed from: n, reason: collision with root package name */
    public static final a f14482n = new a();

    /* renamed from: j, reason: collision with root package name */
    public static final Pattern f14478j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: k, reason: collision with root package name */
    public static final Pattern f14479k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: l, reason: collision with root package name */
    public static final Pattern f14480l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: m, reason: collision with root package name */
    public static final Pattern f14481m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public static final class a {
        public static int a(String str, int r42, int r52, boolean z10) {
            while (r42 < r52) {
                char cCharAt = str.charAt(r42);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && '9' >= cCharAt) || (('a' <= cCharAt && 'z' >= cCharAt) || (('A' <= cCharAt && 'Z' >= cCharAt) || cCharAt == ':'))) == (!z10)) {
                    return r42;
                }
                r42++;
            }
            return r52;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x00a6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static long b(int r14, java.lang.String r15) throws java.lang.NumberFormatException {
            /*
                Method dump skipped, instructions count: 389
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: rc.j.a.b(int, java.lang.String):long");
        }
    }

    public j(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f14483a = str;
        this.f14484b = str2;
        this.f14485c = j10;
        this.f14486d = str3;
        this.f14487e = str4;
        this.f = z10;
        this.f14488g = z11;
        this.f14489h = z12;
        this.f14490i = z13;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (kotlin.jvm.internal.h.a(jVar.f14483a, this.f14483a) && kotlin.jvm.internal.h.a(jVar.f14484b, this.f14484b) && jVar.f14485c == this.f14485c && kotlin.jvm.internal.h.a(jVar.f14486d, this.f14486d) && kotlin.jvm.internal.h.a(jVar.f14487e, this.f14487e) && jVar.f == this.f && jVar.f14488g == this.f14488g && jVar.f14489h == this.f14489h && jVar.f14490i == this.f14490i) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public final int hashCode() {
        int r02 = androidx.room.util.a.a(this.f14484b, androidx.room.util.a.a(this.f14483a, 527, 31), 31);
        long j10 = this.f14485c;
        return ((((((androidx.room.util.a.a(this.f14487e, androidx.room.util.a.a(this.f14486d, (r02 + ((int) (j10 ^ (j10 >>> 32)))) * 31, 31), 31) + (this.f ? 1231 : 1237)) * 31) + (this.f14488g ? 1231 : 1237)) * 31) + (this.f14489h ? 1231 : 1237)) * 31) + (this.f14490i ? 1231 : 1237);
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f14483a);
        sb2.append('=');
        sb2.append(this.f14484b);
        if (this.f14489h) {
            long j10 = this.f14485c;
            if (j10 == Long.MIN_VALUE) {
                str = "; max-age=0";
            } else {
                sb2.append("; expires=");
                str = wc.c.f18865a.get().format(new Date(j10));
                kotlin.jvm.internal.h.e(str, "STANDARD_DATE_FORMAT.get().format(this)");
            }
            sb2.append(str);
        }
        if (!this.f14490i) {
            sb2.append("; domain=");
            sb2.append(this.f14486d);
        }
        sb2.append("; path=");
        sb2.append(this.f14487e);
        if (this.f) {
            sb2.append("; secure");
        }
        if (this.f14488g) {
            sb2.append("; httponly");
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "toString()");
        return string;
    }
}
