package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Scanner;
import kc.a;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class w5 implements c5.u7, a.c {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3816a;

    public /* synthetic */ w5(c5.i4 i4Var) {
        this.f3816a = i4Var;
    }

    public /* synthetic */ w5(Object obj) {
        this.f3816a = obj;
    }

    @Override // c5.u7
    public final void a(String str, Bundle bundle) throws IllegalStateException {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        c5.v5 v5Var = (c5.v5) this.f3816a;
        if (!zIsEmpty) {
            v5Var.getClass();
            throw new IllegalStateException("Unexpected call on client side");
        }
        ((c5.i4) v5Var.f2115a).f1640p.getClass();
        v5Var.h("auto", "_err", bundle, true, true, System.currentTimeMillis());
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0061: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]) (LINE:98), block:B:29:0x0061 */
    public final JSONObject b() {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        JSONObject jSONObject;
        FileInputStream fileInputStream3 = null;
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Checking for cached settings...", null);
        }
        try {
            try {
                File file = (File) this.f3816a;
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file);
                    try {
                        Scanner scannerUseDelimiter = new Scanner(fileInputStream).useDelimiter("\\A");
                        jSONObject = new JSONObject(scannerUseDelimiter.hasNext() ? scannerUseDelimiter.next() : "");
                        fileInputStream3 = fileInputStream;
                    } catch (Exception e10) {
                        e = e10;
                        Log.e("FirebaseCrashlytics", "Failed to fetch cached settings", e);
                        h6.e.a(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", "Settings file does not exist.", null);
                    }
                    jSONObject = null;
                }
                h6.e.a(fileInputStream3, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream3 = fileInputStream2;
                h6.e.a(fileInputStream3, "Error while closing settings cache file.");
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            h6.e.a(fileInputStream3, "Error while closing settings cache file.");
            throw th;
        }
    }

    public final boolean c() {
        c5.i4 i4Var = (c5.i4) this.f3816a;
        if (!TextUtils.isEmpty(i4Var.f1629b)) {
            return false;
        }
        c5.e3 e3Var = i4Var.f1635j;
        c5.i4.e(e3Var);
        return Log.isLoggable(e3Var.t(), 3);
    }

    @Override // kc.a.c
    public final Iterable d(Object obj) {
        la.k this$0 = (la.k) this.f3816a;
        da.m<Object>[] mVarArr = la.k.f9633h;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        Collection<cc.e0> collectionL = ((ma.e) obj).i().l();
        kotlin.jvm.internal.h.e(collectionL, "it.typeConstructor.supertypes");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionL.iterator();
        while (it.hasNext()) {
            ma.g gVarN = ((cc.e0) it.next()).M0().n();
            ma.g gVarA = gVarN != null ? gVarN.a() : null;
            ma.e eVar = gVarA instanceof ma.e ? (ma.e) gVarA : null;
            za.e eVarF = eVar != null ? this$0.f(eVar) : null;
            if (eVarF != null) {
                arrayList.add(eVarF);
            }
        }
        return arrayList;
    }

    public w5(m6.f fVar) {
        this.f3816a = new File(fVar.f10042a, "com.crashlytics.settings.json");
    }
}
