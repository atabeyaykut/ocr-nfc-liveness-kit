package androidx.core.os;

import android.os.Build;
import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@RequiresApi(21)
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0007¨\u0006\u000e"}, d2 = {"Landroidx/core/os/PersistableBundleApi21ImplKt;", "", "", "capacity", "Landroid/os/PersistableBundle;", "createPersistableBundle", "persistableBundle", "", "key", "value", "Ll9/m;", "putValue", "<init>", "()V", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
final class PersistableBundleApi21ImplKt {
    public static final PersistableBundleApi21ImplKt INSTANCE = new PersistableBundleApi21ImplKt();

    private PersistableBundleApi21ImplKt() {
    }

    @DoNotInline
    public static final PersistableBundle createPersistableBundle(int capacity) {
        return new PersistableBundle(capacity);
    }

    @DoNotInline
    public static final void putValue(PersistableBundle persistableBundle, String str, Object obj) {
        String str2;
        h.f(persistableBundle, "persistableBundle");
        if (obj == null) {
            str2 = null;
        } else {
            if (obj instanceof Boolean) {
                if (Build.VERSION.SDK_INT >= 22) {
                    PersistableBundleApi22ImplKt.putBoolean(persistableBundle, str, ((Boolean) obj).booleanValue());
                    return;
                }
                throw new IllegalArgumentException("Illegal value type boolean for key \"" + str + '\"');
            }
            if (obj instanceof Double) {
                persistableBundle.putDouble(str, ((Number) obj).doubleValue());
                return;
            }
            if (obj instanceof Integer) {
                persistableBundle.putInt(str, ((Number) obj).intValue());
                return;
            }
            if (obj instanceof Long) {
                persistableBundle.putLong(str, ((Number) obj).longValue());
                return;
            }
            if (!(obj instanceof String)) {
                if (obj instanceof boolean[]) {
                    if (Build.VERSION.SDK_INT >= 22) {
                        PersistableBundleApi22ImplKt.putBooleanArray(persistableBundle, str, (boolean[]) obj);
                        return;
                    }
                    throw new IllegalArgumentException("Illegal value type boolean[] for key \"" + str + '\"');
                }
                if (obj instanceof double[]) {
                    persistableBundle.putDoubleArray(str, (double[]) obj);
                    return;
                }
                if (obj instanceof int[]) {
                    persistableBundle.putIntArray(str, (int[]) obj);
                    return;
                }
                if (obj instanceof long[]) {
                    persistableBundle.putLongArray(str, (long[]) obj);
                    return;
                }
                if (!(obj instanceof Object[])) {
                    throw new IllegalArgumentException("Illegal value type " + obj.getClass().getCanonicalName() + " for key \"" + str + '\"');
                }
                Class<?> componentType = obj.getClass().getComponentType();
                h.c(componentType);
                if (String.class.isAssignableFrom(componentType)) {
                    persistableBundle.putStringArray(str, (String[]) obj);
                    return;
                }
                throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + str + '\"');
            }
            str2 = (String) obj;
        }
        persistableBundle.putString(str, str2);
    }
}
