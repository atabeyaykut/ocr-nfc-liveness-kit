.class public final Lg7/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx5/c;

.field public final b:Lg7/d0;

.field public final c:Ll3/c;

.field public final d:La7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La7/b<",
            "Li7/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:La7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La7/b<",
            "Ly6/e;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lb7/d;


# direct methods
.method public constructor <init>(Lx5/c;Lg7/d0;La7/b;La7/b;Lb7/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx5/c;",
            "Lg7/d0;",
            "La7/b<",
            "Li7/g;",
            ">;",
            "La7/b<",
            "Ly6/e;",
            ">;",
            "Lb7/d;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ll3/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lx5/c;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lx5/c;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ll3/c;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lg7/y;->a:Lx5/c;

    .line 15
    .line 16
    iput-object p2, p0, Lg7/y;->b:Lg7/d0;

    .line 17
    .line 18
    iput-object v0, p0, Lg7/y;->c:Ll3/c;

    .line 19
    .line 20
    iput-object p3, p0, Lg7/y;->d:La7/b;

    .line 21
    .line 22
    iput-object p4, p0, Lg7/y;->e:La7/b;

    .line 23
    .line 24
    iput-object p5, p0, Lg7/y;->f:Lb7/d;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "sender"

    .line 7
    .line 8
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "subtype"

    .line 12
    .line 13
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "gmp_app_id"

    .line 17
    .line 18
    iget-object p2, p0, Lg7/y;->a:Lx5/c;

    .line 19
    .line 20
    invoke-virtual {p2}, Lx5/c;->a()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p2, Lx5/c;->c:Lx5/e;

    .line 24
    .line 25
    iget-object p2, p2, Lx5/e;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "gmsv"

    .line 31
    .line 32
    iget-object p2, p0, Lg7/y;->b:Lg7/d0;

    .line 33
    .line 34
    monitor-enter p2

    .line 35
    :try_start_0
    iget v0, p2, Lg7/d0;->d:I

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const-string v0, "com.google.android.gms"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Lg7/d0;->d(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 48
    .line 49
    iput v0, p2, Lg7/d0;->d:I

    .line 50
    .line 51
    :cond_0
    iget v0, p2, Lg7/d0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit p2

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p1, "osv"

    .line 62
    .line 63
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string p1, "app_ver"

    .line 73
    .line 74
    iget-object p2, p0, Lg7/y;->b:Lg7/d0;

    .line 75
    .line 76
    invoke-virtual {p2}, Lg7/d0;->a()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string p1, "app_ver_name"

    .line 84
    .line 85
    iget-object p2, p0, Lg7/y;->b:Lg7/d0;

    .line 86
    .line 87
    invoke-virtual {p2}, Lg7/d0;->b()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string p1, "firebase-app-name-hash"

    .line 95
    .line 96
    iget-object p2, p0, Lg7/y;->a:Lx5/c;

    .line 97
    .line 98
    invoke-virtual {p2}, Lx5/c;->a()V

    .line 99
    .line 100
    .line 101
    iget-object p2, p2, Lx5/c;->b:Ljava/lang/String;

    .line 102
    .line 103
    const-string v0, "SHA-1"

    .line 104
    .line 105
    :try_start_1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const/16 v0, 0xb

    .line 118
    .line 119
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    goto :goto_0

    .line 124
    :catch_0
    const-string p2, "[HASH-ERROR]"

    .line 125
    .line 126
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :try_start_2
    iget-object p1, p0, Lg7/y;->f:Lb7/d;

    .line 130
    .line 131
    invoke-interface {p1}, Lb7/d;->a()Lh5/z;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Lh5/n;->a(Lh5/k;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lb7/i;

    .line 140
    .line 141
    invoke-virtual {p1}, Lb7/i;->a()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-nez p2, :cond_1

    .line 150
    .line 151
    const-string p2, "Goog-Firebase-Installations-Auth"

    .line 152
    .line 153
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_1
    const-string p1, "FirebaseMessaging"

    .line 158
    .line 159
    const-string p2, "FIS auth token is empty"

    .line 160
    .line 161
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_1
    move-exception p1

    .line 166
    goto :goto_1

    .line 167
    :catch_2
    move-exception p1

    .line 168
    :goto_1
    const-string p2, "FirebaseMessaging"

    .line 169
    .line 170
    const-string v0, "Failed to get FIS auth token"

    .line 171
    .line 172
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .line 174
    .line 175
    :goto_2
    const-string p1, "appid"

    .line 176
    .line 177
    iget-object p2, p0, Lg7/y;->f:Lb7/d;

    .line 178
    .line 179
    invoke-interface {p2}, Lb7/d;->getId()Lh5/z;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-static {p2}, Lh5/n;->a(Lh5/k;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    check-cast p2, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string p1, "cliv"

    .line 193
    .line 194
    const-string p2, "fcm-23.0.0"

    .line 195
    .line 196
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lg7/y;->e:La7/b;

    .line 200
    .line 201
    invoke-interface {p1}, La7/b;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Ly6/e;

    .line 206
    .line 207
    iget-object p2, p0, Lg7/y;->d:La7/b;

    .line 208
    .line 209
    invoke-interface {p2}, La7/b;->get()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Li7/g;

    .line 214
    .line 215
    if-eqz p1, :cond_2

    .line 216
    .line 217
    if-eqz p2, :cond_2

    .line 218
    .line 219
    const-string v0, "fire-iid"

    .line 220
    .line 221
    invoke-interface {p1, v0}, Ly6/e;->a(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    const/4 v0, 0x1

    .line 226
    if-eq p1, v0, :cond_2

    .line 227
    .line 228
    const-string v0, "Firebase-Client-Log-Type"

    .line 229
    .line 230
    invoke-static {p1}, Lg/d;->c(I)I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string p1, "Firebase-Client"

    .line 242
    .line 243
    invoke-interface {p2}, Li7/g;->a()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_2
    return-void

    .line 251
    :catchall_0
    move-exception p1

    .line 252
    monitor-exit p2

    .line 253
    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lh5/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lh5/k<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lg7/y;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lg7/y;->c:Ll3/c;

    .line 5
    .line 6
    iget-object p2, p1, Ll3/c;->c:Ll3/v;

    .line 7
    .line 8
    monitor-enter p2

    .line 9
    :try_start_1
    iget v0, p2, Ll3/v;->b:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "com.google.android.gms"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    :try_start_2
    iget-object v1, p2, Ll3/v;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Ly3/c;->a(Landroid/content/Context;)Ly3/b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2, v0}, Ly3/b;->b(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    :try_start_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x17

    .line 39
    .line 40
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .line 42
    .line 43
    const-string v1, "Failed to find package "

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "Metadata"

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    :goto_0
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 64
    .line 65
    iput v0, p2, Ll3/v;->b:I

    .line 66
    .line 67
    :cond_0
    iget v0, p2, Ll3/v;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    .line 69
    monitor-exit p2

    .line 70
    const p2, 0xb71b00

    .line 71
    .line 72
    .line 73
    if-ge v0, p2, :cond_2

    .line 74
    .line 75
    iget-object p2, p1, Ll3/c;->c:Ll3/v;

    .line 76
    .line 77
    invoke-virtual {p2}, Ll3/v;->a()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1, p3}, Ll3/c;->a(Landroid/os/Bundle;)Lh5/z;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    sget-object v0, Ll3/y;->a:Ll3/y;

    .line 88
    .line 89
    new-instance v1, Ll3/w;

    .line 90
    .line 91
    invoke-direct {v1, p1, p3}, Ll3/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0, v1}, Lh5/z;->g(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 100
    .line 101
    const-string p2, "MISSING_INSTANCEID_SERVICE"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lh5/n;->d(Ljava/lang/Exception;)Lh5/z;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iget-object p1, p1, Ll3/c;->b:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {p1}, Ll3/u;->a(Landroid/content/Context;)Ll3/u;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance p2, Ll3/t;

    .line 118
    .line 119
    invoke-virtual {p1}, Ll3/u;->b()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-direct {p2, v0, p3}, Ll3/t;-><init>(ILandroid/os/Bundle;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ll3/u;->c(Ll3/r;)Lh5/z;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object p2, Ll3/y;->a:Ll3/y;

    .line 131
    .line 132
    sget-object p3, Lc5/w;->e:Lc5/w;

    .line 133
    .line 134
    invoke-virtual {p1, p2, p3}, Lh5/z;->e(Ljava/util/concurrent/Executor;Lh5/b;)Lh5/k;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_1
    return-object p1

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    monitor-exit p2

    .line 141
    throw p1

    .line 142
    :catch_1
    move-exception p1

    .line 143
    goto :goto_2

    .line 144
    :catch_2
    move-exception p1

    .line 145
    :goto_2
    invoke-static {p1}, Lh5/n;->d(Ljava/lang/Exception;)Lh5/z;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1
.end method
