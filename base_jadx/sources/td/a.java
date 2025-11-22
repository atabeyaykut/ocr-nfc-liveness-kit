package td;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleArrayMap<String, Integer> f15671a;

    static {
        SimpleArrayMap<String, Integer> simpleArrayMap = new SimpleArrayMap<>(13);
        f15671a = simpleArrayMap;
        simpleArrayMap.put("com.android.voicemail.permission.ADD_VOICEMAIL", 14);
        simpleArrayMap.put("android.permission.READ_CALL_LOG", 16);
        simpleArrayMap.put("android.permission.READ_EXTERNAL_STORAGE", 16);
        simpleArrayMap.put("android.permission.WRITE_CALL_LOG", 16);
        simpleArrayMap.put("android.permission.BODY_SENSORS", 20);
        simpleArrayMap.put("android.permission.SYSTEM_ALERT_WINDOW", 23);
        simpleArrayMap.put("android.permission.WRITE_SETTINGS", 23);
        simpleArrayMap.put("android.permission.READ_PHONE_NUMBERS", 26);
        simpleArrayMap.put("android.permission.ANSWER_PHONE_CALLS", 26);
        simpleArrayMap.put("android.permission.ACCEPT_HANDOVER", 28);
        simpleArrayMap.put("android.permission.ACTIVITY_RECOGNITION", 29);
        simpleArrayMap.put("android.permission.ACCESS_MEDIA_LOCATION", 29);
        simpleArrayMap.put("android.permission.ACCESS_BACKGROUND_LOCATION", 29);
    }

    public static boolean a(Context context, String... strArr) {
        int length = strArr.length;
        int r22 = 0;
        while (true) {
            if (r22 >= length) {
                return true;
            }
            String str = strArr[r22];
            Integer num = f15671a.get(str);
            if (num == null || Build.VERSION.SDK_INT >= num.intValue()) {
                boolean z10 = ContextCompat.checkSelfPermission(context, str) == 0;
                if (!z10) {
                    return false;
                }
            }
            r22++;
        }
    }

    public static boolean b(Activity activity, String... strArr) {
        for (String str : strArr) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(activity, str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean c(Fragment fragment, String... strArr) {
        for (String str : strArr) {
            if (fragment.shouldShowRequestPermissionRationale(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(int... r42) {
        if (r42.length == 0) {
            return false;
        }
        for (int r02 : r42) {
            if (r02 != 0) {
                return false;
            }
        }
        return true;
    }
}
