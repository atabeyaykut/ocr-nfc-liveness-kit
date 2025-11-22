package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;

/* loaded from: classes.dex */
public final class u4 {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("PhenotypeConstants.class")
    public static final ArrayMap<String, Uri> f3785a = new ArrayMap<>();

    public static synchronized Uri a() {
        Uri uri;
        ArrayMap<String, Uri> arrayMap = f3785a;
        uri = arrayMap.get("com.google.android.gms.measurement");
        if (uri == null) {
            String strValueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
            uri = Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/"));
            arrayMap.put("com.google.android.gms.measurement", uri);
        }
        return uri;
    }
}
