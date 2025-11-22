package x1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import java.io.File;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.h;
import t1.r;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19116a;

    /* renamed from: b, reason: collision with root package name */
    public ExecutorService f19117b;

    /* renamed from: x1.a$a, reason: collision with other inner class name */
    public static final class RunnableC0300a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final Context f19118a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f19119b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f19120c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f19121d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f19122e;
        public final List<File> f;

        /* renamed from: g, reason: collision with root package name */
        public final w1.a f19123g;

        /* renamed from: h, reason: collision with root package name */
        public final String[] f19124h = {"_id", "_display_name", "_data", "bucket_display_name"};

        public RunnableC0300a(Context context, boolean z10, boolean z11, boolean z12, boolean z13, List list, r rVar) {
            this.f19118a = context;
            this.f19119b = z10;
            this.f19120c = z11;
            this.f19121d = z12;
            this.f19122e = z13;
            this.f = list;
            this.f19123g = rVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0087  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(android.database.Cursor r13) {
            /*
                r12 = this;
                w1.a r0 = r12.f19123g
                if (r13 != 0) goto Ld
                java.lang.NullPointerException r13 = new java.lang.NullPointerException
                r13.<init>()
                r0.a(r13)
                return
            Ld:
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>()
                java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
                r2.<init>()
                boolean r3 = r13.moveToFirst()
                if (r3 == 0) goto Lcc
            L1d:
                java.lang.String[] r3 = r12.f19124h
                r4 = 2
                r4 = r3[r4]
                int r4 = r13.getColumnIndex(r4)
                java.lang.String r4 = r13.getString(r4)
                r5 = 1
                r6 = 0
                r7 = 0
                if (r4 == 0) goto L42
                int r8 = r4.length()
                if (r8 != 0) goto L37
                r8 = 1
                goto L38
            L37:
                r8 = 0
            L38:
                if (r8 == 0) goto L3b
                goto L42
            L3b:
                java.io.File r8 = new java.io.File     // Catch: java.lang.Exception -> L41
                r8.<init>(r4)     // Catch: java.lang.Exception -> L41
                goto L43
            L41:
            L42:
                r8 = r7
            L43:
                if (r8 != 0) goto L46
                goto L85
            L46:
                java.util.List<java.io.File> r9 = r12.f
                if (r9 == 0) goto L51
                boolean r8 = r9.contains(r8)
                if (r8 == 0) goto L51
                goto L85
            L51:
                boolean r8 = r12.f19122e
                java.lang.String r9 = "path"
                if (r8 != 0) goto L67
                kotlin.jvm.internal.h.e(r4, r9)
                java.lang.String r8 = a2.b.g(r4)
                java.lang.String r10 = "gif"
                boolean r8 = mc.j.x(r8, r10)
                if (r8 == 0) goto L67
                goto L85
            L67:
                r6 = r3[r6]
                int r6 = r13.getColumnIndex(r6)
                long r10 = r13.getLong(r6)
                r5 = r3[r5]
                int r5 = r13.getColumnIndex(r5)
                java.lang.String r5 = r13.getString(r5)
                if (r5 == 0) goto L85
                d2.b r7 = new d2.b
                kotlin.jvm.internal.h.e(r4, r9)
                r7.<init>(r10, r5, r4)
            L85:
                if (r7 == 0) goto Lc6
                r1.add(r7)
                boolean r4 = r12.f19119b
                if (r4 == 0) goto Lc6
                r4 = 3
                r3 = r3[r4]
                int r3 = r13.getColumnIndex(r3)
                java.lang.String r3 = r13.getString(r3)
                if (r3 != 0) goto Laf
                java.io.File r3 = new java.io.File
                java.lang.String r4 = r7.f4651c
                r3.<init>(r4)
                java.io.File r3 = r3.getParentFile()
                if (r3 == 0) goto Lad
                java.lang.String r3 = r3.getName()
                goto Laf
            Lad:
                java.lang.String r3 = "SDCARD"
            Laf:
                if (r3 == 0) goto Lc6
                java.lang.Object r4 = r2.get(r3)
                d2.a r4 = (d2.a) r4
                if (r4 != 0) goto Lc1
                d2.a r4 = new d2.a
                r4.<init>(r3)
                r2.put(r3, r4)
            Lc1:
                java.util.ArrayList r3 = r4.f4648b
                r3.add(r7)
            Lc6:
                boolean r3 = r13.moveToNext()
                if (r3 != 0) goto L1d
            Lcc:
                r13.close()
                java.util.Collection r13 = r2.values()
                java.lang.Iterable r13 = (java.lang.Iterable) r13
                java.util.List r13 = m9.t.v1(r13)
                r0.b(r1, r13)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: x1.a.RunnableC0300a.a(android.database.Cursor):void");
        }

        @SuppressLint({"InlinedApi"})
        public final Cursor b(Integer num) {
            Uri contentUri;
            String str;
            Uri contentUri2;
            boolean z10 = Build.VERSION.SDK_INT >= 29;
            String str2 = "EXTERNAL_CONTENT_URI";
            String str3 = "{\n                MediaS…\"external\")\n            }";
            boolean z11 = this.f19121d;
            boolean z12 = this.f19120c;
            if (num == null || !z10) {
                if (z12 || z11) {
                    contentUri = MediaStore.Files.getContentUri("external");
                } else {
                    str3 = "EXTERNAL_CONTENT_URI";
                    contentUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                }
                h.e(contentUri, str3);
            } else {
                if (z12 || z11) {
                    contentUri2 = MediaStore.Files.getContentUri("external");
                    str2 = "{\n                MediaS…\"external\")\n            }";
                } else {
                    contentUri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                }
                h.e(contentUri2, str2);
                contentUri = contentUri2.buildUpon().appendQueryParameter("limit", num.toString()).build();
            }
            Uri uri = contentUri;
            String str4 = z12 ? "media_type=3" : z11 ? "media_type=1 OR media_type=3" : "";
            Context context = this.f19118a;
            if (!z10) {
                if (num != null) {
                    str = "date_modified DESC LIMIT " + num;
                } else {
                    str = "date_modified DESC";
                }
                return context.getContentResolver().query(uri, this.f19124h, str4, null, str);
            }
            Bundle bundle = new Bundle();
            bundle.putStringArray("android:query-arg-sort-columns", new String[]{"date_modified"});
            bundle.putInt("android:query-arg-sort-direction", 1);
            bundle.putString("android:query-arg-sql-selection", str4);
            if (num != null) {
                bundle.putInt("android:query-arg-limit", num.intValue());
            }
            return context.getContentResolver().query(uri, this.f19124h, bundle, null);
        }

        @Override // java.lang.Runnable
        public final void run() {
            Cursor cursorB = b(1000);
            boolean z10 = false;
            if (cursorB != null && cursorB.getCount() == 1000) {
                z10 = true;
            }
            a(cursorB);
            if (z10) {
                a(b(null));
            }
        }
    }

    public a(Context context) {
        this.f19116a = context;
    }
}
