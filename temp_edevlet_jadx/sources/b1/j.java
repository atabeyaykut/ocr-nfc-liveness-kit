package b1;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class j implements h {

    /* renamed from: b, reason: collision with root package name */
    public final Map<String, List<i>> f1034b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Map<String, String> f1035c;

    public static final class a {

        /* renamed from: b, reason: collision with root package name */
        public static final Map<String, List<i>> f1036b;

        /* renamed from: a, reason: collision with root package name */
        public final Map<String, List<i>> f1037a = f1036b;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb2 = new StringBuilder(property.length());
                for (int r32 = 0; r32 < length; r32++) {
                    char cCharAt = property.charAt(r32);
                    if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                        cCharAt = '?';
                    }
                    sb2.append(cCharAt);
                }
                property = sb2.toString();
            }
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(property)) {
                map.put("User-Agent", Collections.singletonList(new b(property)));
            }
            f1036b = Collections.unmodifiableMap(map);
        }
    }

    public static final class b implements i {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final String f1038a;

        public b(@NonNull String str) {
            this.f1038a = str;
        }

        @Override // b1.i
        public final String a() {
            return this.f1038a;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f1038a.equals(((b) obj).f1038a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f1038a.hashCode();
        }

        public final String toString() {
            return androidx.camera.camera2.internal.c.h(new StringBuilder("StringHeaderFactory{value='"), this.f1038a, "'}");
        }
    }

    public j(Map<String, List<i>> map) {
        this.f1034b = Collections.unmodifiableMap(map);
    }

    @Override // b1.h
    public final Map<String, String> a() {
        if (this.f1035c == null) {
            synchronized (this) {
                if (this.f1035c == null) {
                    this.f1035c = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f1035c;
    }

    public final HashMap b() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.f1034b.entrySet()) {
            List<i> value = entry.getValue();
            StringBuilder sb2 = new StringBuilder();
            int size = value.size();
            for (int r6 = 0; r6 < size; r6++) {
                String strA = value.get(r6).a();
                if (!TextUtils.isEmpty(strA)) {
                    sb2.append(strA);
                    if (r6 != value.size() - 1) {
                        sb2.append(',');
                    }
                }
            }
            String string = sb2.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(entry.getKey(), string);
            }
        }
        return map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f1034b.equals(((j) obj).f1034b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1034b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f1034b + '}';
    }
}
