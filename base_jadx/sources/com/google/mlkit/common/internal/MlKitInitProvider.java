package com.google.mlkit.common.internal;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import c6.d;
import c6.g;
import h5.m;
import h5.y;
import java.util.ArrayList;
import r3.r;
import v7.h;

/* loaded from: classes2.dex */
public class MlKitInitProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final void attachInfo(@RecentlyNonNull Context context, @RecentlyNonNull ProviderInfo providerInfo) {
        r.k("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.", !providerInfo.authority.equals("com.google.mlkit.common.mlkitinitprovider"));
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public final int delete(@RecentlyNonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @RecentlyNullable
    public final String getType(@RecentlyNonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @RecentlyNullable
    public final Uri insert(@RecentlyNonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() throws PackageManager.NameNotFoundException {
        Context context = getContext();
        if (context == null) {
            Log.i("MlKitInitProvider", "No context available. Manually call MlKit.initialize(), otherwise ML Kit will not be functional.");
            return false;
        }
        h hVar = new h();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        ArrayList arrayListA = new g(context, new g.a(MlKitComponentDiscoveryService.class)).a();
        y yVar = m.f6842a;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.addAll(arrayListA);
        arrayList2.add(d.b(context, Context.class, new Class[0]));
        arrayList2.add(d.b(hVar, h.class, new Class[0]));
        c6.m mVar = new c6.m(yVar, arrayList, arrayList2);
        hVar.f18268a = mVar;
        mVar.u(true);
        r.k("MlKitContext is already initialized", h.f18267b.getAndSet(hVar) == null);
        return false;
    }

    @Override // android.content.ContentProvider
    @RecentlyNullable
    public final Cursor query(@RecentlyNonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(@RecentlyNonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
