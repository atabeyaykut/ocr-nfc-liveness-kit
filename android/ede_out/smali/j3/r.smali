.class public final Lj3/r;
.super Lf4/c;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lf4/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lj3/r;->a:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x0

    .line 3
    iget-object v0, p0, Lj3/r;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-eq p1, p2, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lj3/r;->x0()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lj3/n;->a(Landroid/content/Context;)Lj3/n;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lj3/n;->b()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lj3/r;->x0()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj3/b;->a(Landroid/content/Context;)Lj3/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lj3/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lj3/b;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    new-instance p1, Li3/a;

    .line 45
    .line 46
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v0, v2}, Li3/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Ln3/c;->h:Lo3/e0;

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    iget-object v3, p1, Ln3/c;->a:Landroid/content/Context;

    .line 56
    .line 57
    if-eqz v1, :cond_7

    .line 58
    .line 59
    invoke-virtual {p1}, Li3/a;->d()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-ne p1, v2, :cond_3

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 p1, 0x0

    .line 68
    :goto_0
    new-array v1, p3, [Ljava/lang/Object;

    .line 69
    .line 70
    sget-object v2, Lj3/m;->a:Lu3/a;

    .line 71
    .line 72
    const-string v4, "Revoking access"

    .line 73
    .line 74
    invoke-virtual {v2, v4, v1}, Lu3/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v3}, Lj3/b;->a(Landroid/content/Context;)Lj3/b;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "refreshToken"

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lj3/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v3}, Lj3/m;->a(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    if-nez v1, :cond_5

    .line 93
    .line 94
    sget-object p1, Lj3/e;->c:Lu3/a;

    .line 95
    .line 96
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 97
    .line 98
    const/4 v0, 0x4

    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->b:I

    .line 104
    .line 105
    if-gtz v0, :cond_4

    .line 106
    .line 107
    const/4 p3, 0x1

    .line 108
    :cond_4
    xor-int/2addr p3, p2

    .line 109
    const-string v0, "Status code must not be SUCCESS"

    .line 110
    .line 111
    invoke-static {p3, v0}, Lr3/r;->b(ZLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance p3, Ln3/k;

    .line 115
    .line 116
    invoke-direct {p3, p1}, Ln3/k;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Ln3/h;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    new-instance p1, Lj3/e;

    .line 124
    .line 125
    invoke-direct {p1, v1}, Lj3/e;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance p3, Ljava/lang/Thread;

    .line 129
    .line 130
    invoke-direct {p3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 134
    .line 135
    .line 136
    iget-object p3, p1, Lj3/e;->b:Lo3/l;

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    new-instance p3, Lj3/k;

    .line 140
    .line 141
    invoke-direct {p3, v0}, Lj3/k;-><init>(Lo3/e0;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, v0, Lo3/e0;->b:Ln3/c;

    .line 145
    .line 146
    invoke-virtual {p1, p2, p3}, Ln3/c;->b(ILcom/google/android/gms/common/api/internal/a;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    new-instance p1, La6/a;

    .line 150
    .line 151
    invoke-direct {p1}, La6/a;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lh5/l;

    .line 155
    .line 156
    invoke-direct {v0}, Lh5/l;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lr3/i0;

    .line 160
    .line 161
    invoke-direct {v1, p3, v0, p1}, Lr3/i0;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lh5/l;La6/a;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Ln3/e$a;)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    invoke-virtual {p1}, Li3/a;->d()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-ne p1, v2, :cond_8

    .line 173
    .line 174
    const/4 p1, 0x1

    .line 175
    goto :goto_2

    .line 176
    :cond_8
    const/4 p1, 0x0

    .line 177
    :goto_2
    new-array p3, p3, [Ljava/lang/Object;

    .line 178
    .line 179
    sget-object v1, Lj3/m;->a:Lu3/a;

    .line 180
    .line 181
    const-string v2, "Signing out"

    .line 182
    .line 183
    invoke-virtual {v1, v2, p3}, Lu3/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v3}, Lj3/m;->a(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    if-eqz p1, :cond_a

    .line 190
    .line 191
    sget-object p1, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    .line 192
    .line 193
    if-eqz p1, :cond_9

    .line 194
    .line 195
    new-instance p3, Lo3/l;

    .line 196
    .line 197
    invoke-direct {p3, v0}, Lo3/l;-><init>(Lo3/e0;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Ln3/h;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    .line 205
    .line 206
    const-string p2, "Result must not be null"

    .line 207
    .line 208
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1

    .line 212
    :cond_a
    new-instance p3, Lj3/i;

    .line 213
    .line 214
    invoke-direct {p3, v0}, Lj3/i;-><init>(Lo3/e0;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, v0, Lo3/e0;->b:Ln3/c;

    .line 218
    .line 219
    invoke-virtual {p1, p2, p3}, Ln3/c;->b(ILcom/google/android/gms/common/api/internal/a;)V

    .line 220
    .line 221
    .line 222
    :goto_3
    new-instance p1, La6/a;

    .line 223
    .line 224
    invoke-direct {p1}, La6/a;-><init>()V

    .line 225
    .line 226
    .line 227
    new-instance v0, Lh5/l;

    .line 228
    .line 229
    invoke-direct {v0}, Lh5/l;-><init>()V

    .line 230
    .line 231
    .line 232
    new-instance v1, Lr3/i0;

    .line 233
    .line 234
    invoke-direct {v1, p3, v0, p1}, Lr3/i0;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lh5/l;La6/a;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Ln3/e$a;)V

    .line 238
    .line 239
    .line 240
    :goto_4
    return p2
.end method

.method public final x0()V
    .locals 4

    iget-object v0, p0, Lj3/r;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1, v0}, Lw3/g;->a(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Calling UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
