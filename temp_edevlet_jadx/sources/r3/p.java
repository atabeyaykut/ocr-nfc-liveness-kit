package r3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class p {

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f14033a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f14034b;

        public /* synthetic */ a(Object obj) {
            r.i(obj);
            this.f14034b = obj;
            this.f14033a = new ArrayList();
        }

        @NonNull
        @CanIgnoreReturnValue
        public final void a(@Nullable Object obj, @NonNull String str) {
            this.f14033a.add(str + "=" + String.valueOf(obj));
        }

        @NonNull
        public final String toString() {
            StringBuilder sb2 = new StringBuilder(100);
            sb2.append(this.f14034b.getClass().getSimpleName());
            sb2.append('{');
            ArrayList arrayList = this.f14033a;
            int size = arrayList.size();
            for (int r32 = 0; r32 < size; r32++) {
                sb2.append((String) arrayList.get(r32));
                if (r32 < size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append('}');
            return sb2.toString();
        }
    }

    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
