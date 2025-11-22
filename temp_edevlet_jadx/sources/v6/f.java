package v6;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import t6.g;

/* loaded from: classes2.dex */
public final class f implements t6.e, g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18254a = true;

    /* renamed from: b, reason: collision with root package name */
    public final JsonWriter f18255b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, t6.d<?>> f18256c;

    /* renamed from: d, reason: collision with root package name */
    public final Map<Class<?>, t6.f<?>> f18257d;

    /* renamed from: e, reason: collision with root package name */
    public final t6.d<Object> f18258e;
    public final boolean f;

    public f(@NonNull Writer writer, @NonNull HashMap map, @NonNull HashMap map2, a aVar, boolean z10) {
        this.f18255b = new JsonWriter(writer);
        this.f18256c = map;
        this.f18257d = map2;
        this.f18258e = aVar;
        this.f = z10;
    }

    @Override // t6.e
    @NonNull
    public final t6.e a(@NonNull t6.c cVar, @Nullable Object obj) throws IOException {
        return g(obj, cVar.f15642a);
    }

    @Override // t6.g
    @NonNull
    public final g add(@Nullable String str) throws IOException {
        h();
        this.f18255b.value(str);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final t6.e b(@NonNull t6.c cVar, boolean z10) throws IOException {
        String str = cVar.f15642a;
        h();
        JsonWriter jsonWriter = this.f18255b;
        jsonWriter.name(str);
        h();
        jsonWriter.value(z10);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final t6.e c(@NonNull t6.c cVar, int r32) throws IOException {
        String str = cVar.f15642a;
        h();
        JsonWriter jsonWriter = this.f18255b;
        jsonWriter.name(str);
        h();
        jsonWriter.value(r32);
        return this;
    }

    @Override // t6.e
    @NonNull
    public final t6.e d(@NonNull t6.c cVar, long j10) throws IOException {
        String str = cVar.f15642a;
        h();
        JsonWriter jsonWriter = this.f18255b;
        jsonWriter.name(str);
        h();
        jsonWriter.value(j10);
        return this;
    }

    @Override // t6.g
    @NonNull
    public final g e(boolean z10) throws IOException {
        h();
        this.f18255b.value(z10);
        return this;
    }

    @NonNull
    public final f f(@Nullable Object obj) throws IOException {
        JsonWriter jsonWriter = this.f18255b;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        int r22 = 0;
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    f(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        g(entry.getValue(), (String) key);
                    } catch (ClassCastException e10) {
                        throw new t6.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e10);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            t6.d<?> dVar = this.f18256c.get(obj.getClass());
            if (dVar != null) {
                jsonWriter.beginObject();
                dVar.a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            t6.f<?> fVar = this.f18257d.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (obj instanceof Enum) {
                String strName = ((Enum) obj).name();
                h();
                jsonWriter.value(strName);
                return this;
            }
            jsonWriter.beginObject();
            this.f18258e.a(obj, this);
            jsonWriter.endObject();
            return this;
        }
        if (obj instanceof byte[]) {
            h();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (r22 < length) {
                jsonWriter.value(r7[r22]);
                r22++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (r22 < length2) {
                long j10 = jArr[r22];
                h();
                jsonWriter.value(j10);
                r22++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (r22 < length3) {
                jsonWriter.value(dArr[r22]);
                r22++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (r22 < length4) {
                jsonWriter.value(zArr[r22]);
                r22++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (r22 < length5) {
                f(numberArr[r22]);
                r22++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (r22 < length6) {
                f(objArr[r22]);
                r22++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    @NonNull
    public final f g(@Nullable Object obj, @NonNull String str) throws IOException {
        boolean z10 = this.f;
        JsonWriter jsonWriter = this.f18255b;
        if (z10) {
            if (obj == null) {
                return this;
            }
            h();
            jsonWriter.name(str);
            return f(obj);
        }
        h();
        jsonWriter.name(str);
        if (obj != null) {
            return f(obj);
        }
        jsonWriter.nullValue();
        return this;
    }

    public final void h() throws IOException {
        if (!this.f18254a) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }
}
