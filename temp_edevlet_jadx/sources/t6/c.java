package t6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f15642a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, Object> f15643b;

    public c(String str, Map<Class<?>, Object> map) {
        this.f15642a = str;
        this.f15643b = map;
    }

    @NonNull
    public static c b(@NonNull String str) {
        return new c(str, Collections.emptyMap());
    }

    @Nullable
    public final <T extends Annotation> T a(@NonNull Class<T> cls) {
        return (T) this.f15643b.get(cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f15642a.equals(cVar.f15642a) && this.f15643b.equals(cVar.f15643b);
    }

    public final int hashCode() {
        return this.f15643b.hashCode() + (this.f15642a.hashCode() * 31);
    }

    @NonNull
    public final String toString() {
        return "FieldDescriptor{name=" + this.f15642a + ", properties=" + this.f15643b.values() + "}";
    }
}
