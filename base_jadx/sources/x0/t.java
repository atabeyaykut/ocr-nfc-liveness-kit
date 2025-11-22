package x0;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.google.android.gms.internal.clearcut.q4;
import com.google.android.gms.internal.measurement.j4;
import com.google.android.gms.internal.measurement.r4;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public Object f19087a;

    /* renamed from: b, reason: collision with root package name */
    public Object f19088b;

    public t(int r22) {
        if (r22 != 2) {
            this.f19087a = new HashMap();
            this.f19088b = new HashMap();
        }
    }

    public final void a() throws IOException {
        try {
            m6.f fVar = (m6.f) this.f19088b;
            String str = (String) this.f19087a;
            fVar.getClass();
            new File(fVar.f10042a, str).createNewFile();
        } catch (IOException e10) {
            Log.e("FirebaseCrashlytics", "Error creating marker: " + ((String) this.f19087a), e10);
        }
    }

    public final Object b() {
        String str;
        r4 r4Var = (r4) this.f19087a;
        String str2 = (String) this.f19088b;
        ContentResolver contentResolver = r4Var.f3709a.getContentResolver();
        Uri uri = j4.f3566a;
        synchronized (j4.class) {
            if (j4.f3570e == null) {
                j4.f3569d.set(false);
                j4.f3570e = new HashMap<>();
                j4.f3574j = new Object();
                contentResolver.registerContentObserver(j4.f3566a, true, new q4(1));
            } else if (j4.f3569d.getAndSet(false)) {
                j4.f3570e.clear();
                j4.f.clear();
                j4.f3571g.clear();
                j4.f3572h.clear();
                j4.f3573i.clear();
                j4.f3574j = new Object();
            }
            Object obj = j4.f3574j;
            str = null;
            if (j4.f3570e.containsKey(str2)) {
                String str3 = j4.f3570e.get(str2);
                if (str3 != null) {
                    str = str3;
                }
            } else {
                int length = j4.f3575k.length;
                Cursor cursorQuery = contentResolver.query(j4.f3566a, null, null, new String[]{str2}, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(1);
                            if (string != null && string.equals(null)) {
                                string = null;
                            }
                            j4.a(obj, str2, string);
                            if (string != null) {
                                str = string;
                            }
                        } else {
                            j4.a(obj, str2, null);
                        }
                    } finally {
                        cursorQuery.close();
                    }
                }
            }
        }
        return str;
    }

    public /* synthetic */ t(Object obj, Object obj2) {
        this.f19087a = obj;
        this.f19088b = obj2;
    }
}
