package m6;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import j6.k;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: d, reason: collision with root package name */
    public static final Charset f10035d = Charset.forName("UTF-8");

    /* renamed from: e, reason: collision with root package name */
    public static final int f10036e = 15;
    public static final k6.a f = new k6.a();

    /* renamed from: g, reason: collision with root package name */
    public static final c f10037g = new Comparator() { // from class: m6.c
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((File) obj2).getName().compareTo(((File) obj).getName());
        }
    };

    /* renamed from: h, reason: collision with root package name */
    public static final d f10038h = new FilenameFilter() { // from class: m6.d
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.startsWith(NotificationCompat.CATEGORY_EVENT);
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f10039a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    public final f f10040b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final o6.d f10041c;

    public e(f fVar, o6.c cVar) {
        this.f10040b = fVar;
        this.f10041c = cVar;
    }

    public static void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    @NonNull
    public static String d(@NonNull File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int r42 = fileInputStream.read(bArr);
                if (r42 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f10035d);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, r42);
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void e(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f10035d);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th2) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final ArrayList b() {
        ArrayList arrayList = new ArrayList();
        f fVar = this.f10040b;
        arrayList.addAll(f.d(fVar.f10045d.listFiles()));
        arrayList.addAll(f.d(fVar.f10046e.listFiles()));
        c cVar = f10037g;
        Collections.sort(arrayList, cVar);
        List listD = f.d(fVar.f10044c.listFiles());
        Collections.sort(listD, cVar);
        arrayList.addAll(listD);
        return arrayList;
    }

    public final void c(@NonNull k kVar, @NonNull String str, boolean z10) {
        f fVar = this.f10040b;
        int r12 = ((o6.c) this.f10041c).f11255h.get().b().f12831a;
        f.getClass();
        v6.d dVar = k6.a.f8771a;
        dVar.getClass();
        StringWriter stringWriter = new StringWriter();
        try {
            dVar.a(kVar, stringWriter);
        } catch (IOException unused) {
        }
        try {
            e(fVar.a(str, androidx.browser.browseractions.a.a(NotificationCompat.CATEGORY_EVENT, String.format(Locale.US, "%010d", Integer.valueOf(this.f10039a.getAndIncrement())), z10 ? "_" : "")), stringWriter.toString());
        } catch (IOException e10) {
            Log.w("FirebaseCrashlytics", "Could not persist event for session " + str, e10);
        }
        FilenameFilter filenameFilter = new FilenameFilter() { // from class: m6.a
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return str2.startsWith(NotificationCompat.CATEGORY_EVENT) && !str2.endsWith("_");
            }
        };
        fVar.getClass();
        File file = new File(fVar.f10043b, str);
        file.mkdirs();
        List<File> listD = f.d(file.listFiles(filenameFilter));
        Collections.sort(listD, new Comparator() { // from class: m6.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                String name = ((File) obj).getName();
                int r02 = e.f10036e;
                return name.substring(0, r02).compareTo(((File) obj2).getName().substring(0, r02));
            }
        });
        int size = listD.size();
        for (File file2 : listD) {
            if (size <= r12) {
                return;
            }
            f.c(file2);
            size--;
        }
    }
}
