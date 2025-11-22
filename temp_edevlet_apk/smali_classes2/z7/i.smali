.class public final Lz7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/f;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:Landroid/content/Context;

.field public final e:Lx7/c;

.field public final f:Lp4/v9;

.field public g:Lp4/db;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx7/c;Lp4/v9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/i;->d:Landroid/content/Context;

    iput-object p2, p0, Lz7/i;->e:Lx7/c;

    iput-object p3, p0, Lz7/i;->f:Lp4/v9;

    return-void
.end method


# virtual methods
.method public final a(La8/a;)Ljava/util/ArrayList;
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz7/i;->g:Lp4/db;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lz7/i;->c()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lz7/i;->g:Lp4/db;

    .line 9
    .line 10
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lz7/i;->a:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0}, Lp4/a;->w0()Landroid/os/Parcel;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1, v2}, Lp4/a;->y0(Landroid/os/Parcel;I)V

    .line 23
    .line 24
    .line 25
    iput-boolean v2, p0, Lz7/i;->a:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance v0, Lr7/a;

    .line 30
    .line 31
    const-string v1, "Failed to init barcode scanner."

    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    iget v1, p1, La8/a;->d:I

    .line 38
    .line 39
    iget v3, p1, La8/a;->g:I

    .line 40
    .line 41
    const/16 v4, 0x23

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    if-ne v3, v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, La8/a;->b()[Landroid/media/Image$Plane;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    aget-object v1, v1, v5

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :cond_2
    move v8, v1

    .line 60
    new-instance v1, Lp4/nb;

    .line 61
    .line 62
    iget v7, p1, La8/a;->g:I

    .line 63
    .line 64
    iget v9, p1, La8/a;->e:I

    .line 65
    .line 66
    iget v3, p1, La8/a;->f:I

    .line 67
    .line 68
    invoke-static {v3}, Lb8/b;->a(I)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v11

    .line 76
    move-object v6, v1

    .line 77
    invoke-direct/range {v6 .. v12}, Lp4/nb;-><init>(IIIIJ)V

    .line 78
    .line 79
    .line 80
    sget-object v3, Lb8/d;->a:Lb8/d;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lb8/d;->a(La8/a;)Lz3/d;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :try_start_1
    invoke-virtual {v0}, Lp4/a;->w0()Landroid/os/Parcel;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sget v4, Lp4/s0;->a:I

    .line 94
    .line 95
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3, v5}, Lp4/nb;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x3

    .line 105
    invoke-virtual {v0, v3, p1}, Lp4/a;->x0(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget-object v0, Lp4/ta;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    new-instance p1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lp4/ta;

    .line 138
    .line 139
    new-instance v2, Lx7/a;

    .line 140
    .line 141
    new-instance v3, Lz7/h;

    .line 142
    .line 143
    invoke-direct {v3, v1}, Lz7/h;-><init>(Lp4/ta;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {v2, v3}, Lx7/a;-><init>(Lz7/g;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    return-object p1

    .line 154
    :catch_1
    move-exception p1

    .line 155
    new-instance v0, Lr7/a;

    .line 156
    .line 157
    const-string v1, "Failed to run barcode scanner."

    .line 158
    .line 159
    invoke-direct {v0, v1, p1}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 160
    .line 161
    .line 162
    throw v0
.end method

.method public final b()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lz7/i;->g:Lp4/db;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lp4/a;->w0()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Lp4/a;->y0(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "DecoupledBarcodeScanner"

    .line 16
    .line 17
    const-string v2, "Failed to release barcode scanner."

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lz7/i;->g:Lp4/db;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lz7/i;->a:Z

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz7/i;->g:Lp4/db;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lz7/i;->b:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lz7/i;->d:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "com.google.mlkit.dynamite.barcode"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    :goto_0
    iget-object v5, p0, Lz7/i;->f:Lp4/v9;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iput-boolean v3, p0, Lz7/i;->b:Z

    .line 28
    .line 29
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->c:Lcom/google/android/gms/dynamite/c;

    .line 30
    .line 31
    const-string v2, "com.google.mlkit.vision.barcode.bundled.internal.ThickBarcodeScannerCreator"

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2}, Lz7/i;->d(Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;Ljava/lang/String;)Lp4/db;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lz7/i;->g:Lp4/db;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lr7/a;

    .line 42
    .line 43
    const-string v2, "Failed to create thick barcode scanner."

    .line 44
    .line 45
    invoke-direct {v1, v2, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    new-instance v1, Lr7/a;

    .line 51
    .line 52
    const-string v2, "Failed to load the bundled barcode module."

    .line 53
    .line 54
    invoke-direct {v1, v2, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_2
    iput-boolean v4, p0, Lz7/i;->b:Z

    .line 59
    .line 60
    :try_start_1
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/b;

    .line 61
    .line 62
    const-string v2, "com.google.android.gms.vision.barcode"

    .line 63
    .line 64
    const-string v4, "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator"

    .line 65
    .line 66
    invoke-virtual {p0, v1, v2, v4}, Lz7/i;->d(Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;Ljava/lang/String;)Lp4/db;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lz7/i;->g:Lp4/db;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 71
    .line 72
    :goto_1
    sget-object v0, Lp4/o7;->b:Lp4/o7;

    .line 73
    .line 74
    invoke-static {v5, v0}, Lz7/a;->c(Lp4/v9;Lp4/o7;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v0, p0, Lz7/i;->b:Z

    .line 78
    .line 79
    return v0

    .line 80
    :catch_2
    move-exception v0

    .line 81
    sget-object v1, Lp4/o7;->e:Lp4/o7;

    .line 82
    .line 83
    invoke-static {v5, v1}, Lz7/a;->c(Lp4/v9;Lp4/o7;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lr7/a;

    .line 87
    .line 88
    const-string v2, "Failed to create thin barcode scanner."

    .line 89
    .line 90
    invoke-direct {v1, v2, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :catch_3
    nop

    .line 95
    iget-boolean v1, p0, Lz7/i;->c:Z

    .line 96
    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    const-string v1, "barcode"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lv7/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iput-boolean v3, p0, Lz7/i;->c:Z

    .line 105
    .line 106
    :cond_3
    sget-object v0, Lp4/o7;->d:Lp4/o7;

    .line 107
    .line 108
    invoke-static {v5, v0}, Lz7/a;->c(Lp4/v9;Lp4/o7;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lr7/a;

    .line 112
    .line 113
    const-string v1, "Waiting for the barcode module to be downloaded. Please wait."

    .line 114
    .line 115
    const/16 v2, 0xe

    .line 116
    .line 117
    invoke-direct {v0, v1, v2}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final d(Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;Ljava/lang/String;)Lp4/db;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$a;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz7/i;->d:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget p2, Lp4/gb;->a:I

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p2, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    .line 18
    .line 19
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    instance-of p3, p2, Lp4/hb;

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    move-object p1, p2

    .line 28
    check-cast p1, Lp4/hb;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p2, Lp4/fb;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lp4/fb;-><init>(Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    move-object p1, p2

    .line 37
    :goto_0
    new-instance p2, Lz3/d;

    .line 38
    .line 39
    invoke-direct {p2, v0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance p3, Lp4/va;

    .line 43
    .line 44
    iget-object v0, p0, Lz7/i;->e:Lx7/c;

    .line 45
    .line 46
    iget v0, v0, Lx7/c;->a:I

    .line 47
    .line 48
    invoke-direct {p3, v0}, Lp4/va;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2, p3}, Lp4/hb;->x(Lz3/d;Lp4/va;)Lp4/db;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method
