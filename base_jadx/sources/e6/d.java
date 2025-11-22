package e6;

import android.content.Context;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5116a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public a f5117b = null;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        public final String f5118a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        public final String f5119b;

        /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(e6.d r6) throws android.content.res.Resources.NotFoundException {
            /*
                r5 = this;
                r5.<init>()
                android.content.Context r0 = r6.f5116a
                java.lang.String r1 = "com.google.firebase.crashlytics.unity_version"
                java.lang.String r2 = "string"
                int r0 = h6.e.f(r0, r1, r2)
                r1 = 2
                java.lang.String r2 = "FirebaseCrashlytics"
                r3 = 0
                android.content.Context r6 = r6.f5116a
                if (r0 == 0) goto L30
                java.lang.String r4 = "Unity"
                r5.f5118a = r4
                android.content.res.Resources r6 = r6.getResources()
                java.lang.String r6 = r6.getString(r0)
                r5.f5119b = r6
                java.lang.String r0 = "Unity Editor version is: "
                java.lang.String r6 = androidx.browser.browseractions.b.e(r0, r6)
                boolean r0 = android.util.Log.isLoggable(r2, r1)
                if (r0 == 0) goto L61
                goto L59
            L30:
                java.lang.String r0 = "flutter_assets"
                android.content.res.AssetManager r4 = r6.getAssets()     // Catch: java.io.IOException -> L48
                if (r4 != 0) goto L39
                goto L48
            L39:
                android.content.res.AssetManager r6 = r6.getAssets()     // Catch: java.io.IOException -> L48
                java.lang.String[] r6 = r6.list(r0)     // Catch: java.io.IOException -> L48
                if (r6 == 0) goto L48
                int r6 = r6.length     // Catch: java.io.IOException -> L48
                if (r6 <= 0) goto L48
                r6 = 1
                goto L49
            L48:
                r6 = 0
            L49:
                if (r6 == 0) goto L5d
                java.lang.String r6 = "Flutter"
                r5.f5118a = r6
                r5.f5119b = r3
                boolean r6 = android.util.Log.isLoggable(r2, r1)
                if (r6 == 0) goto L61
                java.lang.String r6 = "Development platform is: Flutter"
            L59:
                android.util.Log.v(r2, r6, r3)
                goto L61
            L5d:
                r5.f5118a = r3
                r5.f5119b = r3
            L61:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: e6.d.a.<init>(e6.d):void");
        }
    }

    public d(Context context) {
        this.f5116a = context;
    }
}
