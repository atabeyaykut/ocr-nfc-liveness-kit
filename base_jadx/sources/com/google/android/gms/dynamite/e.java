package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class e implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.C0060b a(Context context, String str, DynamiteModule.b.a aVar) throws DynamiteModule.a {
        DynamiteModule.b.C0060b c0060b = new DynamiteModule.b.C0060b();
        int r12 = aVar.b(context, str);
        c0060b.f3015a = r12;
        int r32 = 0;
        int r52 = r12 != 0 ? aVar.a(context, str, false) : aVar.a(context, str, true);
        c0060b.f3016b = r52;
        int r6 = c0060b.f3015a;
        if (r6 == 0) {
            if (r52 == 0) {
                c0060b.f3017c = 0;
            }
            return c0060b;
        }
        r32 = r6;
        if (r32 >= r52) {
            c0060b.f3017c = -1;
        } else {
            c0060b.f3017c = 1;
        }
        return c0060b;
    }
}
