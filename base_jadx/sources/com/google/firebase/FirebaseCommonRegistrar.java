package com.google.firebase;

import android.content.Context;
import android.os.Build;
import androidx.browser.browseractions.b;
import androidx.constraintlayout.core.state.a;
import b7.f;
import c6.d;
import c6.i;
import c6.o;
import i7.g;
import java.util.ArrayList;
import java.util.List;
import y6.e;

/* loaded from: classes2.dex */
public class FirebaseCommonRegistrar implements i {
    public static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // c6.i
    public final List<d<?>> getComponents() {
        String string;
        ArrayList arrayList = new ArrayList();
        d.a aVarA = d.a(g.class);
        aVarA.a(new o(2, 0, i7.d.class));
        aVarA.f2197e = new f(1);
        arrayList.add(aVarA.b());
        d.a aVarA2 = d.a(e.class);
        aVarA2.a(new o(1, 0, Context.class));
        aVarA2.a(new o(2, 0, y6.d.class));
        aVarA2.f2197e = new androidx.camera.core.impl.utils.f();
        arrayList.add(aVarA2.b());
        arrayList.add(i7.f.a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(i7.f.a("fire-core", "20.0.0"));
        arrayList.add(i7.f.a("device-name", a(Build.PRODUCT)));
        arrayList.add(i7.f.a("device-model", a(Build.DEVICE)));
        arrayList.add(i7.f.a("device-brand", a(Build.BRAND)));
        arrayList.add(i7.f.b("android-target-sdk", new androidx.camera.core.impl.utils.f()));
        arrayList.add(i7.f.b("android-min-sdk", new a()));
        arrayList.add(i7.f.b("android-platform", new b(2)));
        arrayList.add(i7.f.b("android-installer", new androidx.camera.core.impl.a()));
        try {
            string = l9.d.f9577e.toString();
        } catch (NoClassDefFoundError unused) {
            string = null;
        }
        if (string != null) {
            arrayList.add(i7.f.a("kotlin", string));
        }
        return arrayList;
    }
}
