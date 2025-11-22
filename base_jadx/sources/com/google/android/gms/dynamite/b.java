package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class b implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.C0060b a(Context context, String str, DynamiteModule.b.a aVar) throws DynamiteModule.a {
        DynamiteModule.b.C0060b c0060b = new DynamiteModule.b.C0060b();
        int r22 = aVar.a(context, str, true);
        c0060b.f3016b = r22;
        if (r22 != 0) {
            c0060b.f3017c = 1;
        } else {
            int r42 = aVar.b(context, str);
            c0060b.f3015a = r42;
            if (r42 != 0) {
                c0060b.f3017c = -1;
            }
        }
        return c0060b;
    }
}
