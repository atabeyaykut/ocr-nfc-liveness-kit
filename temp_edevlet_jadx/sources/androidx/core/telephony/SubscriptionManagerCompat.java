package androidx.core.telephony;

import android.os.Build;
import android.telephony.SubscriptionManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(22)
/* loaded from: classes.dex */
public class SubscriptionManagerCompat {
    private static Method sGetSlotIndexMethod;

    @RequiresApi(29)
    public static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        public static int getSlotIndex(int r02) {
            return SubscriptionManager.getSlotIndex(r02);
        }
    }

    private SubscriptionManagerCompat() {
    }

    public static int getSlotIndex(int r72) throws SecurityException {
        if (r72 == -1) {
            return -1;
        }
        int r12 = Build.VERSION.SDK_INT;
        if (r12 >= 29) {
            return Api29Impl.getSlotIndex(r72);
        }
        try {
            if (sGetSlotIndexMethod == null) {
                sGetSlotIndexMethod = r12 >= 26 ? SubscriptionManager.class.getDeclaredMethod("getSlotIndex", Integer.TYPE) : SubscriptionManager.class.getDeclaredMethod("getSlotId", Integer.TYPE);
                sGetSlotIndexMethod.setAccessible(true);
            }
            Integer num = (Integer) sGetSlotIndexMethod.invoke(null, Integer.valueOf(r72));
            if (num != null) {
                return num.intValue();
            }
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        return -1;
    }
}
