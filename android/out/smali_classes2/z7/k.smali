.class public final Lz7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/f;


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public final c:Lp4/e;

.field public final d:Lp4/v9;

.field public e:Lp4/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx7/c;Lp4/v9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp4/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lp4/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz7/k;->c:Lp4/e;

    .line 10
    .line 11
    iput-object p1, p0, Lz7/k;->b:Landroid/content/Context;

    .line 12
    .line 13
    iget p1, p2, Lx7/c;->a:I

    .line 14
    .line 15
    iput p1, v0, Lp4/e;->a:I

    .line 16
    .line 17
    iput-object p3, p0, Lz7/k;->d:Lp4/v9;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(La8/a;)Ljava/util/ArrayList;
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz7/k;->e:Lp4/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lz7/k;->c()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lz7/k;->e:Lp4/g;

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    new-instance v8, Lp4/k;

    .line 13
    .line 14
    iget v2, p1, La8/a;->d:I

    .line 15
    .line 16
    iget v3, p1, La8/a;->e:I

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    iget v1, p1, La8/a;->f:I

    .line 22
    .line 23
    invoke-static {v1}, Lb8/b;->a(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    move-object v1, v8

    .line 28
    invoke-direct/range {v1 .. v7}, Lp4/k;-><init>(IIIIJ)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget v1, p1, La8/a;->g:I

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eq v1, v2, :cond_4

    .line 36
    .line 37
    const/16 v2, 0x11

    .line 38
    .line 39
    if-eq v1, v2, :cond_3

    .line 40
    .line 41
    const/16 v2, 0x23

    .line 42
    .line 43
    if-eq v1, v2, :cond_2

    .line 44
    .line 45
    const v2, 0x32315659

    .line 46
    .line 47
    .line 48
    if-ne v1, v2, :cond_1

    .line 49
    .line 50
    invoke-static {p1}, Lb8/c;->a(La8/a;)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v1, Lz3/d;

    .line 55
    .line 56
    invoke-direct {v1, p1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lr7/a;

    .line 61
    .line 62
    iget p1, p1, La8/a;->g:I

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const/16 v2, 0x25

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .line 70
    .line 71
    const-string v2, "Unsupported image format: "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/4 v1, 0x3

    .line 84
    invoke-direct {v0, p1, v1}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_2
    invoke-virtual {p1}, La8/a;->b()[Landroid/media/Image$Plane;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    aget-object v1, p1, v3

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput v1, v8, Lp4/k;->a:I

    .line 102
    .line 103
    aget-object p1, p1, v3

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v1, Lz3/d;

    .line 110
    .line 111
    invoke-direct {v1, p1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object p1, p1, La8/a;->b:Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    new-instance v1, Lz3/d;

    .line 118
    .line 119
    invoke-direct {v1, p1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-virtual {v0, v1, v8}, Lp4/g;->z0(Lz3/d;Lp4/k;)[Lp4/rb;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception p1

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    iget-object p1, p1, La8/a;->a:Landroid/graphics/Bitmap;

    .line 130
    .line 131
    new-instance v1, Lz3/d;

    .line 132
    .line 133
    invoke-direct {v1, p1}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lp4/a;->w0()Landroid/os/Parcel;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    sget v2, Lp4/s0;->a:I

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 143
    .line 144
    .line 145
    const/4 v1, 0x1

    .line 146
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, p1, v3}, Lp4/k;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    .line 151
    .line 152
    const/4 v1, 0x2

    .line 153
    invoke-virtual {v0, p1, v1}, Lp4/a;->x0(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    sget-object v0, Lp4/rb;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, [Lp4/rb;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 166
    .line 167
    .line 168
    move-object p1, v0

    .line 169
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    array-length v1, p1

    .line 175
    :goto_2
    if-ge v3, v1, :cond_5

    .line 176
    .line 177
    aget-object v2, p1, v3

    .line 178
    .line 179
    new-instance v4, Lx7/a;

    .line 180
    .line 181
    new-instance v5, Lz7/j;

    .line 182
    .line 183
    invoke-direct {v5, v2}, Lz7/j;-><init>(Lp4/rb;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v4, v5}, Lx7/a;-><init>(Lz7/g;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    .line 192
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    return-object v0

    .line 196
    :goto_3
    new-instance v0, Lr7/a;

    .line 197
    .line 198
    const-string v1, "Failed to detect with legacy barcode detector"

    .line 199
    .line 200
    invoke-direct {v0, v1, p1}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :cond_6
    new-instance p1, Lr7/a;

    .line 205
    .line 206
    const-string v0, "Error initializing the legacy barcode scanner."

    .line 207
    .line 208
    const/16 v1, 0xe

    .line 209
    .line 210
    invoke-direct {p1, v0, v1}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    throw p1
.end method

.method public final b()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lz7/k;->e:Lp4/g;

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
    const/4 v2, 0x3

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
    const-string v1, "LegacyBarcodeScanner"

    .line 16
    .line 17
    const-string v2, "Failed to release legacy barcode detector."

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lz7/k;->e:Lp4/g;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz7/k;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lz7/k;->e:Lp4/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/b;

    .line 10
    .line 11
    const-string v3, "com.google.android.gms.vision.dynamite"

    .line 12
    .line 13
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget v3, Lp4/i;->a:I

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v3, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    .line 30
    .line 31
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    instance-of v4, v3, Lp4/j;

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    move-object v1, v3

    .line 40
    check-cast v1, Lp4/j;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v3, Lp4/h;

    .line 44
    .line 45
    invoke-direct {v3, v1}, Lp4/h;-><init>(Landroid/os/IBinder;)V

    .line 46
    .line 47
    .line 48
    move-object v1, v3

    .line 49
    :goto_0
    new-instance v3, Lz3/d;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, p0, Lz7/k;->c:Lp4/e;

    .line 55
    .line 56
    invoke-interface {v1, v3, v4}, Lp4/j;->I(Lz3/d;Lp4/e;)Lp4/g;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lz7/k;->e:Lp4/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    iget-object v3, p0, Lz7/k;->d:Lp4/v9;

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    :try_start_1
    iget-boolean v1, p0, Lz7/k;->a:Z

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const-string v1, "LegacyBarcodeScanner"

    .line 72
    .line 73
    const-string v2, "Request optional module download."

    .line 74
    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    const-string v1, "barcode"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lv7/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lz7/k;->a:Z

    .line 85
    .line 86
    sget-object v0, Lp4/o7;->d:Lp4/o7;

    .line 87
    .line 88
    invoke-static {v3, v0}, Lz7/a;->c(Lp4/v9;Lp4/o7;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lr7/a;

    .line 92
    .line 93
    const-string v1, "Waiting for the barcode module to be downloaded. Please wait."

    .line 94
    .line 95
    const/16 v2, 0xe

    .line 96
    .line 97
    invoke-direct {v0, v1, v2}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    :goto_1
    sget-object v0, Lp4/o7;->b:Lp4/o7;

    .line 102
    .line 103
    invoke-static {v3, v0}, Lz7/a;->c(Lp4/v9;Lp4/o7;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Lr7/a;

    .line 109
    .line 110
    const-string v2, "Failed to load deprecated vision dynamite module."

    .line 111
    .line 112
    invoke-direct {v1, v2, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    new-instance v1, Lr7/a;

    .line 118
    .line 119
    const-string v2, "Failed to create legacy barcode detector."

    .line 120
    .line 121
    invoke-direct {v1, v2, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method
