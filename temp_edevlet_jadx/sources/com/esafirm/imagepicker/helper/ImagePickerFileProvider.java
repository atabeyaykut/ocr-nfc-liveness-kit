package com.esafirm.imagepicker.helper;

import android.content.Context;
import androidx.core.content.FileProvider;
import c5.e0;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import t1.b;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/esafirm/imagepicker/helper/ImagePickerFileProvider;", "Landroidx/core/content/FileProvider;", "<init>", "()V", "imagepicker_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class ImagePickerFileProvider extends FileProvider {
    @Override // androidx.core.content.FileProvider, android.content.ContentProvider
    public final boolean onCreate() {
        Context context = getContext();
        h.c(context);
        e0.f1500q = new b(context);
        return super.onCreate();
    }
}
