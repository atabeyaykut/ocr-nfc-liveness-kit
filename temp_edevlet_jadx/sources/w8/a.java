package w8;

import android.content.Context;
import b8.f;
import c5.w;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Iterator;
import kotlin.jvm.internal.h;
import l9.m;
import nc.a0;
import p9.d;
import r9.e;
import r9.i;
import x9.l;
import x9.p;

@e(c = "id.zelory.compressor.Compressor$compress$3", f = "Compressor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class a extends i implements p<a0, d<? super File>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public a0 f18818a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f18819b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f18820c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ File f18821d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(l lVar, Context context, File file, d dVar) {
        super(2, dVar);
        this.f18819b = lVar;
        this.f18820c = context;
        this.f18821d = file;
    }

    @Override // r9.a
    public final d<m> create(Object obj, d<?> completion) {
        h.g(completion, "completion");
        a aVar = new a(this.f18819b, this.f18820c, this.f18821d, completion);
        aVar.f18818a = (a0) obj;
        return aVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, d<? super File> dVar) {
        return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        x8.a aVar = new x8.a();
        this.f18819b.invoke(aVar);
        String str = c.f18823a;
        Context context = this.f18820c;
        h.g(context, "context");
        File imageFile = this.f18821d;
        h.g(imageFile, "imageFile");
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        File cacheDir = context.getCacheDir();
        h.b(cacheDir, "context.cacheDir");
        sb3.append(cacheDir.getPath());
        String str2 = c.f18823a;
        sb3.append(str2);
        sb3.append("compressor");
        sb3.append(str2);
        sb2.append(sb3.toString());
        sb2.append(imageFile.getName());
        File file = new File(sb2.toString());
        if (!imageFile.exists()) {
            throw new v9.e(imageFile);
        }
        if (file.exists() && !file.delete()) {
            throw new v9.a(imageFile, file, "Tried to overwrite the destination, but failed to delete it.");
        }
        if (!imageFile.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(imageFile);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    f.s(fileInputStream, fileOutputStream, 8192);
                    x5.a.f(fileOutputStream, null);
                    x5.a.f(fileInputStream, null);
                } finally {
                }
            } finally {
            }
        } else if (!file.mkdirs()) {
            throw new v9.b(imageFile, file, "Failed to create target directory.");
        }
        Iterator it = aVar.f19185a.iterator();
        while (it.hasNext()) {
            x8.b bVar = (x8.b) it.next();
            while (!bVar.b(file)) {
                file = bVar.a(file);
            }
        }
        return file;
    }
}
