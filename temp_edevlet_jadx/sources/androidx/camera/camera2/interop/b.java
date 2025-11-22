package androidx.camera.camera2.interop;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f649a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f650b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f651c;

    public /* synthetic */ b(Object obj, int r22, boolean z10) {
        this.f649a = r22;
        this.f651c = obj;
        this.f650b = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x008e  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
            int r0 = r8.f649a
            switch(r0) {
                case 0: goto L6;
                default: goto L5;
            }
        L5:
            goto L10
        L6:
            java.lang.Object r0 = r8.f651c
            androidx.camera.camera2.interop.Camera2CameraControl r0 = (androidx.camera.camera2.interop.Camera2CameraControl) r0
            boolean r1 = r8.f650b
            androidx.camera.camera2.interop.Camera2CameraControl.g(r0, r1)
            return
        L10:
            java.lang.Object r0 = r8.f651c
            b7.c r0 = (b7.c) r0
            boolean r1 = r8.f650b
            java.lang.Object r2 = b7.c.f1149m
            r0.getClass()
            java.lang.Object r2 = b7.c.f1149m
            monitor-enter(r2)
            x5.c r3 = r0.f1151a     // Catch: java.lang.Throwable -> Lb0
            r3.a()     // Catch: java.lang.Throwable -> Lb0
            android.content.Context r3 = r3.f19165a     // Catch: java.lang.Throwable -> Lb0
            qd.f r3 = qd.f.c(r3)     // Catch: java.lang.Throwable -> Lb0
            d7.c r4 = r0.f1153c     // Catch: java.lang.Throwable -> La9
            d7.a r4 = r4.b()     // Catch: java.lang.Throwable -> La9
            if (r3 == 0) goto L34
            r3.d()     // Catch: java.lang.Throwable -> Lb0
        L34:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lb0
            int r2 = r4.f()     // Catch: b7.e -> L5b
            r3 = 5
            r5 = 1
            r6 = 0
            if (r2 != r3) goto L40
            r2 = 1
            goto L41
        L40:
            r2 = 0
        L41:
            if (r2 != 0) goto L62
            int r2 = r4.f()     // Catch: b7.e -> L5b
            r7 = 3
            if (r2 != r7) goto L4c
            r2 = 1
            goto L4d
        L4c:
            r2 = 0
        L4d:
            if (r2 == 0) goto L50
            goto L62
        L50:
            if (r1 != 0) goto L5d
            b7.l r1 = r0.f1154d     // Catch: b7.e -> L5b
            boolean r1 = r1.a(r4)     // Catch: b7.e -> L5b
            if (r1 == 0) goto La8
            goto L5d
        L5b:
            r1 = move-exception
            goto La5
        L5d:
            d7.a r1 = r0.d(r4)     // Catch: b7.e -> L5b
            goto L66
        L62:
            d7.a r1 = r0.h(r4)     // Catch: b7.e -> L5b
        L66:
            r0.e(r1)
            r0.l(r4, r1)
            int r2 = r1.f()
            r4 = 4
            if (r2 != r4) goto L75
            r2 = 1
            goto L76
        L75:
            r2 = 0
        L76:
            if (r2 == 0) goto L7d
            java.lang.String r2 = r1.f4674b
            r0.k(r2)
        L7d:
            int r2 = r1.f()
            if (r2 != r3) goto L85
            r2 = 1
            goto L86
        L85:
            r2 = 0
        L86:
            if (r2 == 0) goto L8e
            b7.e r1 = new b7.e
            r1.<init>()
            goto La5
        L8e:
            int r2 = r1.f4675c
            r3 = 2
            if (r2 == r3) goto L97
            if (r2 != r5) goto L96
            goto L97
        L96:
            r5 = 0
        L97:
            if (r5 == 0) goto La1
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r2 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r1.<init>(r2)
            goto La5
        La1:
            r0.j(r1)
            goto La8
        La5:
            r0.i(r1)
        La8:
            return
        La9:
            r0 = move-exception
            if (r3 == 0) goto Laf
            r3.d()     // Catch: java.lang.Throwable -> Lb0
        Laf:
            throw r0     // Catch: java.lang.Throwable -> Lb0
        Lb0:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lb0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.interop.b.run():void");
    }
}
