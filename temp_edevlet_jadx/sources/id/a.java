package id;

import android.util.Log;

/* loaded from: classes2.dex */
public final class a extends c6.a {
    @Override // id.c
    public final void b(String str, String str2, Object... objArr) {
        if (objArr.length != 0) {
            str2 = String.format(str2, objArr);
        }
        Log.w(str, str2);
    }

    @Override // id.c
    public final void e(Exception exc, String str, String str2, Object... objArr) {
        if (objArr.length != 0) {
            str2 = String.format(str2, objArr);
        }
        Log.e(str, str2, exc);
    }

    @Override // id.c
    public final void f(Exception exc, String str, String str2, Object... objArr) {
        if (objArr.length != 0) {
            str2 = String.format(str2, objArr);
        }
        Log.w(str, str2, exc);
    }

    @Override // id.c
    public final void g(String str, String str2, Object... objArr) {
        if (objArr.length != 0) {
            str2 = String.format(str2, objArr);
        }
        Log.i(str, str2);
    }

    @Override // id.c
    public final void j(String str, String str2, Object... objArr) {
    }

    @Override // id.c
    public final void l(String str, String str2, Object... objArr) {
        if (objArr.length != 0) {
            str2 = String.format(str2, objArr);
        }
        Log.e(str, str2);
    }
}
