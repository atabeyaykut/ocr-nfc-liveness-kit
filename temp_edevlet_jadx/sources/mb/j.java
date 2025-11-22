package mb;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class j extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public p f10298a;

    public j(String str) {
        super(str);
        this.f10298a = null;
    }

    public static j b() {
        return new j("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    public final void a(p pVar) {
        this.f10298a = pVar;
    }
}
