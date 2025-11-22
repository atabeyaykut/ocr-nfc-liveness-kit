package com.bumptech.glide;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import b1.a;
import b1.b;
import b1.d;
import b1.e;
import b1.f;
import b1.k;
import b1.t;
import b1.u;
import b1.v;
import b1.w;
import b1.x;
import b1.y;
import c1.a;
import c1.b;
import c1.c;
import c1.d;
import c1.e;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.data.k;
import e1.b0;
import e1.t;
import e1.v;
import e1.x;
import e1.z;
import f1.a;
import g1.a;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class m {
    public static k a(b bVar, List list) {
        v0.j gVar;
        v0.j xVar;
        int r17;
        y0.c cVar = bVar.f2706a;
        h hVar = bVar.f2708c;
        Context applicationContext = hVar.getApplicationContext();
        i iVar = hVar.f2719h;
        k kVar = new k();
        e1.k kVar2 = new e1.k();
        l1.b bVar2 = kVar.f2734g;
        synchronized (bVar2) {
            bVar2.f9323a.add(kVar2);
        }
        int r52 = Build.VERSION.SDK_INT;
        if (r52 >= 27) {
            kVar.i(new e1.p());
        }
        Resources resources = applicationContext.getResources();
        ArrayList arrayListF = kVar.f();
        y0.b bVar3 = bVar.f2709d;
        i1.a aVar = new i1.a(applicationContext, arrayListF, cVar, bVar3);
        b0 b0Var = new b0(cVar, new b0.g());
        e1.m mVar = new e1.m(kVar.f(), resources.getDisplayMetrics(), cVar, bVar3);
        if (r52 < 28 || !iVar.f2722a.containsKey(d.class)) {
            gVar = new e1.g(mVar);
            xVar = new x(mVar, bVar3);
        } else {
            xVar = new t();
            gVar = new e1.h();
        }
        if (r52 >= 28) {
            r17 = r52;
            kVar.d(new a.c(new g1.a(arrayListF, bVar3)), InputStream.class, Drawable.class, "Animation");
            kVar.d(new a.b(new g1.a(arrayListF, bVar3)), ByteBuffer.class, Drawable.class, "Animation");
        } else {
            r17 = r52;
        }
        g1.f fVar = new g1.f(applicationContext);
        t.c cVar2 = new t.c(resources);
        t.d dVar = new t.d(resources);
        t.b bVar4 = new t.b(resources);
        t.a aVar2 = new t.a(resources);
        e1.c cVar3 = new e1.c(bVar3);
        j1.a aVar3 = new j1.a();
        j1.d dVar2 = new j1.d();
        ContentResolver contentResolver = applicationContext.getContentResolver();
        kVar.b(ByteBuffer.class, new b1.c());
        kVar.b(InputStream.class, new u(bVar3));
        kVar.d(gVar, ByteBuffer.class, Bitmap.class, "Bitmap");
        kVar.d(xVar, InputStream.class, Bitmap.class, "Bitmap");
        String str = Build.FINGERPRINT;
        if (!"robolectric".equals(str)) {
            kVar.d(new v(mVar), ParcelFileDescriptor.class, Bitmap.class, "Bitmap");
        }
        kVar.d(b0Var, ParcelFileDescriptor.class, Bitmap.class, "Bitmap");
        kVar.d(new b0(cVar, new b0.c()), AssetFileDescriptor.class, Bitmap.class, "Bitmap");
        w.a<?> aVar4 = w.a.f1081a;
        kVar.a(Bitmap.class, Bitmap.class, aVar4);
        kVar.d(new z(), Bitmap.class, Bitmap.class, "Bitmap");
        kVar.c(Bitmap.class, cVar3);
        kVar.d(new e1.a(resources, gVar), ByteBuffer.class, BitmapDrawable.class, "BitmapDrawable");
        kVar.d(new e1.a(resources, xVar), InputStream.class, BitmapDrawable.class, "BitmapDrawable");
        kVar.d(new e1.a(resources, b0Var), ParcelFileDescriptor.class, BitmapDrawable.class, "BitmapDrawable");
        kVar.c(BitmapDrawable.class, new e1.b(cVar, cVar3));
        kVar.d(new i1.j(arrayListF, aVar, bVar3), InputStream.class, i1.c.class, "Animation");
        kVar.d(aVar, ByteBuffer.class, i1.c.class, "Animation");
        kVar.c(i1.c.class, new i1.d());
        kVar.a(u0.a.class, u0.a.class, aVar4);
        kVar.d(new i1.h(cVar), u0.a.class, Bitmap.class, "Bitmap");
        kVar.d(fVar, Uri.class, Drawable.class, "legacy_append");
        kVar.d(new e1.a(fVar, cVar), Uri.class, Bitmap.class, "legacy_append");
        kVar.j(new a.C0085a());
        kVar.a(File.class, ByteBuffer.class, new d.b());
        kVar.a(File.class, InputStream.class, new f.e());
        kVar.d(new h1.a(), File.class, File.class, "legacy_append");
        kVar.a(File.class, ParcelFileDescriptor.class, new f.b());
        kVar.a(File.class, File.class, aVar4);
        kVar.j(new k.a(bVar3));
        if (!"robolectric".equals(str)) {
            kVar.j(new ParcelFileDescriptorRewinder.a());
        }
        Class cls = Integer.TYPE;
        kVar.a(cls, InputStream.class, cVar2);
        kVar.a(cls, ParcelFileDescriptor.class, bVar4);
        kVar.a(Integer.class, InputStream.class, cVar2);
        kVar.a(Integer.class, ParcelFileDescriptor.class, bVar4);
        kVar.a(Integer.class, Uri.class, dVar);
        kVar.a(cls, AssetFileDescriptor.class, aVar2);
        kVar.a(Integer.class, AssetFileDescriptor.class, aVar2);
        kVar.a(cls, Uri.class, dVar);
        kVar.a(String.class, InputStream.class, new e.c());
        kVar.a(Uri.class, InputStream.class, new e.c());
        kVar.a(String.class, InputStream.class, new v.c());
        kVar.a(String.class, ParcelFileDescriptor.class, new v.b());
        kVar.a(String.class, AssetFileDescriptor.class, new v.a());
        kVar.a(Uri.class, InputStream.class, new a.c(applicationContext.getAssets()));
        kVar.a(Uri.class, AssetFileDescriptor.class, new a.b(applicationContext.getAssets()));
        kVar.a(Uri.class, InputStream.class, new b.a(applicationContext));
        kVar.a(Uri.class, InputStream.class, new c.a(applicationContext));
        int r72 = r17;
        if (r72 >= 29) {
            kVar.a(Uri.class, InputStream.class, new d.c(applicationContext));
            kVar.a(Uri.class, ParcelFileDescriptor.class, new d.b(applicationContext));
        }
        kVar.a(Uri.class, InputStream.class, new x.d(contentResolver));
        kVar.a(Uri.class, ParcelFileDescriptor.class, new x.b(contentResolver));
        kVar.a(Uri.class, AssetFileDescriptor.class, new x.a(contentResolver));
        kVar.a(Uri.class, InputStream.class, new y.a());
        kVar.a(URL.class, InputStream.class, new e.a());
        kVar.a(Uri.class, File.class, new k.a(applicationContext));
        kVar.a(b1.g.class, InputStream.class, new a.C0051a());
        kVar.a(byte[].class, ByteBuffer.class, new b.a());
        kVar.a(byte[].class, InputStream.class, new b.d());
        kVar.a(Uri.class, Uri.class, aVar4);
        kVar.a(Drawable.class, Drawable.class, aVar4);
        kVar.d(new g1.g(), Drawable.class, Drawable.class, "legacy_append");
        kVar.k(Bitmap.class, BitmapDrawable.class, new j1.b(resources));
        kVar.k(Bitmap.class, byte[].class, aVar3);
        kVar.k(Drawable.class, byte[].class, new j1.c(cVar, aVar3, dVar2));
        kVar.k(i1.c.class, byte[].class, dVar2);
        if (r72 >= 23) {
            b0 b0Var2 = new b0(cVar, new b0.d());
            kVar.d(b0Var2, ByteBuffer.class, Bitmap.class, "legacy_append");
            kVar.d(new e1.a(resources, b0Var2), ByteBuffer.class, BitmapDrawable.class, "legacy_append");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            k1.c cVar4 = (k1.c) it.next();
            try {
                cVar4.a();
            } catch (AbstractMethodError e10) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ".concat(cVar4.getClass().getName()), e10);
            }
        }
        return kVar;
    }
}
