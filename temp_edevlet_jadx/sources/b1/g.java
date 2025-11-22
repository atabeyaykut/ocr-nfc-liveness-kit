package b1;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class g implements v0.f {

    /* renamed from: b, reason: collision with root package name */
    public final h f1027b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final URL f1028c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f1029d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public String f1030e;

    @Nullable
    public URL f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public volatile byte[] f1031g;

    /* renamed from: h, reason: collision with root package name */
    public int f1032h;

    public g(String str) {
        j jVar = h.f1033a;
        this.f1028c = null;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f1029d = str;
        q1.l.b(jVar);
        this.f1027b = jVar;
    }

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        if (this.f1031g == null) {
            this.f1031g = c().getBytes(v0.f.f18200a);
        }
        messageDigest.update(this.f1031g);
    }

    public final String c() {
        String str = this.f1029d;
        if (str != null) {
            return str;
        }
        URL url = this.f1028c;
        q1.l.b(url);
        return url.toString();
    }

    public final URL d() throws MalformedURLException {
        if (this.f == null) {
            if (TextUtils.isEmpty(this.f1030e)) {
                String string = this.f1029d;
                if (TextUtils.isEmpty(string)) {
                    URL url = this.f1028c;
                    q1.l.b(url);
                    string = url.toString();
                }
                this.f1030e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
            }
            this.f = new URL(this.f1030e);
        }
        return this.f;
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return c().equals(gVar.c()) && this.f1027b.equals(gVar.f1027b);
    }

    @Override // v0.f
    public final int hashCode() {
        if (this.f1032h == 0) {
            int r02 = c().hashCode();
            this.f1032h = r02;
            this.f1032h = this.f1027b.hashCode() + (r02 * 31);
        }
        return this.f1032h;
    }

    public final String toString() {
        return c();
    }

    public g(URL url) {
        j jVar = h.f1033a;
        q1.l.b(url);
        this.f1028c = url;
        this.f1029d = null;
        q1.l.b(jVar);
        this.f1027b = jVar;
    }
}
