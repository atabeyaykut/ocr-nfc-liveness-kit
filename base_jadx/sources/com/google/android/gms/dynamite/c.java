package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
public final class c implements DynamiteModule.b {
    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.C0060b a(Context context, String str, DynamiteModule.b.a aVar) throws DynamiteModule.a {
        DynamiteModule.b.C0060b c0060b = new DynamiteModule.b.C0060b();
        int r12 = aVar.b(context, str);
        c0060b.f3015a = r12;
        if (r12 != 0) {
            c0060b.f3017c = -1;
        } else {
            int r32 = aVar.a(context, str, true);
            c0060b.f3016b = r32;
            if (r32 != 0) {
                c0060b.f3017c = 1;
            }
        }
        return c0060b;
    }
}
