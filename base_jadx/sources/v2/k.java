package v2;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class k implements e {

    /* renamed from: a, reason: collision with root package name */
    public final a f18226a;

    /* renamed from: b, reason: collision with root package name */
    public final i f18227b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f18228c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Context f18229a;

        /* renamed from: b, reason: collision with root package name */
        public Map<String, String> f18230b = null;

        public a(Context context) {
            this.f18229a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
        @androidx.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final v2.d a(java.lang.String r15) throws android.content.pm.PackageManager.NameNotFoundException {
            /*
                Method dump skipped, instructions count: 242
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: v2.k.a.a(java.lang.String):v2.d");
        }
    }

    public k(Context context, i iVar) {
        a aVar = new a(context);
        this.f18228c = new HashMap();
        this.f18226a = aVar;
        this.f18227b = iVar;
    }

    @Override // v2.e
    @Nullable
    public final synchronized m get(String str) {
        if (this.f18228c.containsKey(str)) {
            return (m) this.f18228c.get(str);
        }
        d dVarA = this.f18226a.a(str);
        if (dVarA == null) {
            return null;
        }
        i iVar = this.f18227b;
        m mVarCreate = dVarA.create(new c(iVar.f18220a, iVar.f18221b, iVar.f18222c, str));
        this.f18228c.put(str, mVarCreate);
        return mVarCreate;
    }
}
