.class public final Ld8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc8/e;

.field public c:Z

.field public d:Ls4/h9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/a;->a:Landroid/content/Context;

    iput-object p2, p0, Ld8/a;->b:Lc8/e;

    return-void
.end method


# virtual methods
.method public final a(La8/a;)Lc8/a;
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld8/a;->d:Ls4/h9;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ld8/a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Ld8/a;->d:Ls4/h9;

    .line 9
    .line 10
    iget-object v1, p0, Ld8/a;->b:Lc8/e;

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    invoke-interface {v1}, Lc8/e;->d()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Lc8/e;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, "Unable to load thick text recognizer "

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string p1, "Waiting for the OCR optional module to be downloaded. Please wait."

    .line 48
    .line 49
    :goto_0
    new-instance v0, Lr7/a;

    .line 50
    .line 51
    const/16 v1, 0xe

    .line 52
    .line 53
    invoke-direct {v0, p1, v1}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_3
    new-instance v0, Ls4/f9;

    .line 58
    .line 59
    iget v3, p1, La8/a;->g:I

    .line 60
    .line 61
    iget v4, p1, La8/a;->d:I

    .line 62
    .line 63
    iget v5, p1, La8/a;->e:I

    .line 64
    .line 65
    iget v2, p1, La8/a;->f:I

    .line 66
    .line 67
    invoke-static {v2}, Lb8/b;->a(I)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    move-object v2, v0

    .line 76
    invoke-direct/range {v2 .. v8}, Ls4/f9;-><init>(IIIIJ)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Lb8/d;->a:Lb8/d;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lb8/d;->a(La8/a;)Lz3/d;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :try_start_0
    iget-object v2, p0, Ld8/a;->d:Ls4/h9;

    .line 89
    .line 90
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ls4/a;->w0()Landroid/os/Parcel;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    sget v4, Ls4/o0;->a:I

    .line 98
    .line 99
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 100
    .line 101
    .line 102
    const/4 p1, 0x1

    .line 103
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    invoke-virtual {v0, v3, p1}, Ls4/f9;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    .line 109
    .line 110
    const/4 p1, 0x3

    .line 111
    invoke-virtual {v2, v3, p1}, Ls4/a;->x0(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    sget-object v0, Ls4/r9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_4

    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/os/Parcelable;

    .line 130
    .line 131
    :goto_1
    check-cast v0, Ls4/r9;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lc8/a;

    .line 137
    .line 138
    invoke-direct {p1, v0}, Lc8/a;-><init>(Ls4/r9;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    return-object p1

    .line 142
    :catch_0
    move-exception p1

    .line 143
    invoke-interface {v1}, Lc8/e;->a()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const-string v2, "Failed to run text recognizer "

    .line 156
    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    goto :goto_2

    .line 164
    :cond_5
    new-instance v0, Ljava/lang/String;

    .line 165
    .line 166
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :goto_2
    new-instance v1, Lr7/a;

    .line 170
    .line 171
    invoke-direct {v1, v0, p1}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 172
    .line 173
    .line 174
    throw v1
.end method

.method public final b()V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr7/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld8/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Ld8/a;->b:Lc8/e;

    .line 4
    .line 5
    iget-object v2, p0, Ld8/a;->d:Ls4/h9;

    .line 6
    .line 7
    if-nez v2, :cond_7

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    :try_start_0
    invoke-interface {v1}, Lc8/e;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->c:Lcom/google/android/gms/dynamite/c;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/b;

    .line 21
    .line 22
    :goto_0
    invoke-interface {v1}, Lc8/e;->f()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v1}, Lc8/e;->c()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget v5, Ls4/j9;->a:I

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v5, "com.google.mlkit.vision.text.aidls.ITextRecognizerCreator"

    .line 45
    .line 46
    invoke-interface {v4, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    instance-of v6, v5, Ls4/k9;

    .line 51
    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    move-object v4, v5

    .line 55
    check-cast v4, Ls4/k9;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance v5, Ls4/i9;

    .line 59
    .line 60
    invoke-direct {v5, v4}, Ls4/i9;-><init>(Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    move-object v4, v5

    .line 64
    :goto_1
    invoke-interface {v1}, Lc8/e;->d()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    new-instance v5, Lz3/d;

    .line 71
    .line 72
    invoke-direct {v5, v0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v6, Ls4/t9;

    .line 76
    .line 77
    invoke-interface {v1}, Lc8/e;->b()V

    .line 78
    .line 79
    .line 80
    invoke-direct {v6, v2}, Ls4/t9;-><init>(Z)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v4, v5, v6}, Ls4/k9;->n(Lz3/d;Ls4/t9;)Ls4/h9;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    new-instance v5, Lz3/d;

    .line 89
    .line 90
    invoke-direct {v5, v0}, Lz3/d;-><init>(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v4, v5}, Ls4/k9;->K(Lz3/d;)Ls4/h9;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    :goto_2
    iput-object v4, p0, Ld8/a;->d:Ls4/h9;

    .line 98
    .line 99
    invoke-virtual {v4}, Ls4/a;->w0()Landroid/os/Parcel;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v4, v5, v3}, Ls4/a;->y0(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-interface {v1}, Lc8/e;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const-string v3, "Failed to init text recognizer "

    .line 121
    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_3
    new-instance v2, Lr7/a;

    .line 135
    .line 136
    invoke-direct {v2, v1, v0}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    throw v2

    .line 140
    :catch_1
    move-exception v4

    .line 141
    invoke-interface {v1}, Lc8/e;->d()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_6

    .line 146
    .line 147
    iget-boolean v1, p0, Ld8/a;->c:Z

    .line 148
    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    const-string v1, "ocr"

    .line 153
    .line 154
    invoke-static {v0, v1}, Lv7/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iput-boolean v3, p0, Ld8/a;->c:Z

    .line 158
    .line 159
    new-instance v0, Lr7/a;

    .line 160
    .line 161
    const-string v1, "Waiting for the text optional module to be downloaded. Please wait."

    .line 162
    .line 163
    const/16 v2, 0xe

    .line 164
    .line 165
    invoke-direct {v0, v1, v2}, Lr7/a;-><init>(Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_6
    new-instance v0, Lr7/a;

    .line 170
    .line 171
    const/4 v5, 0x2

    .line 172
    new-array v5, v5, [Ljava/lang/Object;

    .line 173
    .line 174
    invoke-interface {v1}, Lc8/e;->a()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    aput-object v1, v5, v2

    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    aput-object v1, v5, v3

    .line 185
    .line 186
    const-string v1, "Failed to init thick text recognizer %s. %s"

    .line 187
    .line 188
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-direct {v0, v1, v4}, Lr7/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_7
    return-void
.end method

.method public final c()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Ld8/a;->d:Ls4/h9;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ls4/a;->w0()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Ls4/a;->y0(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Ld8/a;->b:Lc8/e;

    .line 16
    .line 17
    invoke-interface {v1}, Lc8/e;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "Failed to release text recognizer "

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    const-string v2, "DecoupledTextDelegate"

    .line 44
    .line 45
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_1
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Ld8/a;->d:Ls4/h9;

    .line 50
    .line 51
    :cond_1
    return-void
.end method
