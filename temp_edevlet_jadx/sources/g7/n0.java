package g7;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class n0 {

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f5886a;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f5890e;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("internalQueue")
    public final ArrayDeque<String> f5889d = new ArrayDeque<>();

    /* renamed from: b, reason: collision with root package name */
    public final String f5887b = "topic_operation_queue";

    /* renamed from: c, reason: collision with root package name */
    public final String f5888c = ",";

    public n0(SharedPreferences sharedPreferences, Executor executor) {
        this.f5886a = sharedPreferences;
        this.f5890e = executor;
    }

    @WorkerThread
    public static n0 a(SharedPreferences sharedPreferences, Executor executor) {
        n0 n0Var = new n0(sharedPreferences, executor);
        synchronized (n0Var.f5889d) {
            n0Var.f5889d.clear();
            String string = n0Var.f5886a.getString(n0Var.f5887b, "");
            if (!TextUtils.isEmpty(string) && string.contains(n0Var.f5888c)) {
                String[] strArrSplit = string.split(n0Var.f5888c, -1);
                if (strArrSplit.length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                }
                for (String str : strArrSplit) {
                    if (!TextUtils.isEmpty(str)) {
                        n0Var.f5889d.add(str);
                    }
                }
            }
        }
        return n0Var;
    }

    @Nullable
    public final String b() {
        String strPeek;
        synchronized (this.f5889d) {
            strPeek = this.f5889d.peek();
        }
        return strPeek;
    }

    public final boolean c(@Nullable String str) {
        boolean zRemove;
        synchronized (this.f5889d) {
            zRemove = this.f5889d.remove(str);
            if (zRemove) {
                this.f5890e.execute(new Runnable() { // from class: g7.m0
                    @Override // java.lang.Runnable
                    public final void run() {
                        n0 n0Var = this.f5884a;
                        synchronized (n0Var.f5889d) {
                            SharedPreferences.Editor editorEdit = n0Var.f5886a.edit();
                            String str2 = n0Var.f5887b;
                            StringBuilder sb2 = new StringBuilder();
                            Iterator<String> it = n0Var.f5889d.iterator();
                            while (it.hasNext()) {
                                sb2.append(it.next());
                                sb2.append(n0Var.f5888c);
                            }
                            editorEdit.putString(str2, sb2.toString()).commit();
                        }
                    }
                });
            }
        }
        return zRemove;
    }
}
