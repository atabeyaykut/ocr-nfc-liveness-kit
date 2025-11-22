package mc;

import java.util.List;
import java.util.regex.Matcher;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Matcher f10367a;

    /* renamed from: b, reason: collision with root package name */
    public a f10368b;

    public static final class a extends m9.c<String> {
        public a() {
        }

        @Override // m9.a, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof String) {
                return super.contains((String) obj);
            }
            return false;
        }

        @Override // m9.c, java.util.List
        public final Object get(int r22) {
            String strGroup = c.this.f10367a.group(r22);
            return strGroup == null ? "" : strGroup;
        }

        @Override // m9.c, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof String) {
                return super.indexOf((String) obj);
            }
            return -1;
        }

        @Override // m9.a
        public final int l() {
            return c.this.f10367a.groupCount() + 1;
        }

        @Override // m9.c, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof String) {
                return super.lastIndexOf((String) obj);
            }
            return -1;
        }
    }

    public c(Matcher matcher, String str) {
        this.f10367a = matcher;
    }

    public final List<String> a() {
        if (this.f10368b == null) {
            this.f10368b = new a();
        }
        a aVar = this.f10368b;
        kotlin.jvm.internal.h.c(aVar);
        return aVar;
    }
}
