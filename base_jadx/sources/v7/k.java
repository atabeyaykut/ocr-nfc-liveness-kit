package v7;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import c5.w;

/* loaded from: classes2.dex */
public final class k {
    public static void a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        o4.c cVar = o4.e.f11213b;
        Object[] objArr = {str};
        w.O(objArr, 1);
        o4.f fVar = new o4.f(objArr, 1);
        Intent intent = new Intent();
        intent.setClassName("com.google.android.gms", "com.google.android.gms.vision.DependencyBroadcastReceiverProxy");
        intent.setAction("com.google.android.gms.vision.DEPENDENCY");
        intent.putExtra("com.google.android.gms.vision.DEPENDENCIES", TextUtils.join(",", fVar));
        context.sendBroadcast(intent);
    }
}
