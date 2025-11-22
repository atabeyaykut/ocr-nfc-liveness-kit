.class public final synthetic Landroidx/camera/camera2/internal/compat/workaround/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements La7/a$a;
.implements Lh5/b;
.implements Lio/realm/g0$a;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/internal/compat/workaround/b;->a:I

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/workaround/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La7/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le6/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    const-string v2, "FirebaseCrashlytics"

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "Crashlytics native component now available."

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v2, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {p1}, La7/b;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Le6/a;

    .line 28
    .line 29
    iget-object v0, v0, Le6/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart;

    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart;->a(Landroidx/camera/camera2/internal/compat/workaround/WaitForRepeatingRequestStart;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lh5/k;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh6/m0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lh5/k;->m()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lh5/k;->i()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lh6/a0;

    .line 19
    .line 20
    sget-object v0, Lc5/y;->g:Lc5/y;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lh6/a0;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lc5/y;->l(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lh6/a0;->b()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Deleted report file: "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Lc5/y;->l(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "Crashlytics could not delete report file: "

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, p1, v1}, Lc5/y;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    const/4 p1, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Lh5/k;->h()Ljava/lang/Exception;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "FirebaseCrashlytics"

    .line 104
    .line 105
    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    .line 106
    .line 107
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1
.end method

.method public final d(Lio/realm/g0;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/compat/workaround/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/workaround/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->setFavorite(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :goto_0
    check-cast v1, Ljava/util/List;

    .line 17
    .line 18
    const-string v0, "$cityListDB"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v1, Ljava/util/Collection;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lio/realm/g0;->E(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/workaround/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;

    .line 4
    .line 5
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 6
    .line 7
    sget v1, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->E:I

    .line 8
    .line 9
    const-string v1, "this$0"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "result"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, -0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    if-ne v1, v2, :cond_19

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const-string v1, "operationType"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v1, v3

    .line 46
    :goto_0
    sget-object v2, Lyd/a;->a:Lyd/a$a;

    .line 47
    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v6, "Operation type "

    .line 51
    .line 52
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    new-array v6, v4, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v2, v5, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    const/4 v6, 0x2

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-ne v7, v5, :cond_f

    .line 78
    .line 79
    const-string v1, "LOGIN STAGE 0"

    .line 80
    .line 81
    new-array v7, v4, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v2, v1, v7}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "tid"

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v7, "uk"

    .line 93
    .line 94
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v7, "push"

    .line 99
    .line 100
    iput-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->y:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iput-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->z:Ljava/lang/Integer;

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    const/4 v6, 0x0

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 120
    :goto_2
    if-nez v6, :cond_e

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    const/4 v6, 0x0

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    :goto_3
    const/4 v6, 0x1

    .line 134
    :goto_4
    if-nez v6, :cond_e

    .line 135
    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v7, "LOGIN STAGE 1 "

    .line 139
    .line 140
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const/16 v7, 0x20

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    new-array v8, v4, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {v2, v6, v8}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    const-string v6, "settings"

    .line 164
    .line 165
    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    const-string v8, "did"

    .line 170
    .line 171
    invoke-interface {v6, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    const-string v9, "esk"

    .line 176
    .line 177
    invoke-interface {v6, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    if-eqz v8, :cond_7

    .line 182
    .line 183
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-nez v8, :cond_6

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_6
    const/4 v8, 0x0

    .line 191
    goto :goto_6

    .line 192
    :cond_7
    :goto_5
    const/4 v8, 0x1

    .line 193
    :goto_6
    if-eqz v8, :cond_b

    .line 194
    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-nez v6, :cond_8

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_8
    const/4 v6, 0x0

    .line 205
    goto :goto_8

    .line 206
    :cond_9
    :goto_7
    const/4 v6, 0x1

    .line 207
    :goto_8
    if-nez v6, :cond_a

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_a
    const/4 v5, 0x0

    .line 211
    :cond_b
    :goto_9
    if-eqz v5, :cond_d

    .line 212
    .line 213
    const-string v5, "1"

    .line 214
    .line 215
    iput-object v5, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->B:Ljava/lang/String;

    .line 216
    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v6, "LOGIN STAGE 2 "

    .line 220
    .line 221
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    new-array v4, v4, [Ljava/lang/Object;

    .line 238
    .line 239
    invoke-virtual {v2, v5, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iget-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->B:Ljava/lang/String;

    .line 243
    .line 244
    if-eqz v2, :cond_c

    .line 245
    .line 246
    invoke-virtual {v0, p1, v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_12

    .line 250
    .line 251
    :cond_c
    const-string p1, "mUserChoice"

    .line 252
    .line 253
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v3

    .line 257
    :cond_d
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->u(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_12

    .line 261
    .line 262
    :cond_e
    const-string p1, "UK or TID Value Not Found"

    .line 263
    .line 264
    invoke-virtual {v0, v3, p1, v4}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->F(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_12

    .line 268
    .line 269
    :cond_f
    :goto_a
    if-nez v1, :cond_10

    .line 270
    .line 271
    goto/16 :goto_12

    .line 272
    .line 273
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-ne v1, v6, :cond_1c

    .line 278
    .line 279
    const-string v1, "uuid"

    .line 280
    .line 281
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    iput-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->A:Ljava/lang/String;

    .line 289
    .line 290
    const-string v2, "code"

    .line 291
    .line 292
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    const-string v8, "pin"

    .line 297
    .line 298
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    iget-object v9, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->A:Ljava/lang/String;

    .line 303
    .line 304
    const-string v10, "mScanUUIDValue"

    .line 305
    .line 306
    if-eqz v9, :cond_18

    .line 307
    .line 308
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    if-lez v9, :cond_11

    .line 313
    .line 314
    const/4 v9, 0x1

    .line 315
    goto :goto_b

    .line 316
    :cond_11
    const/4 v9, 0x0

    .line 317
    :goto_b
    if-eqz v9, :cond_1c

    .line 318
    .line 319
    if-eqz v7, :cond_13

    .line 320
    .line 321
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    if-nez v9, :cond_12

    .line 326
    .line 327
    goto :goto_c

    .line 328
    :cond_12
    const/4 v9, 0x0

    .line 329
    goto :goto_d

    .line 330
    :cond_13
    :goto_c
    const/4 v9, 0x1

    .line 331
    :goto_d
    if-nez v9, :cond_1c

    .line 332
    .line 333
    if-eqz p1, :cond_15

    .line 334
    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    if-nez v9, :cond_14

    .line 340
    .line 341
    goto :goto_e

    .line 342
    :cond_14
    const/4 v9, 0x0

    .line 343
    goto :goto_f

    .line 344
    :cond_15
    :goto_e
    const/4 v9, 0x1

    .line 345
    :goto_f
    if-nez v9, :cond_1c

    .line 346
    .line 347
    iget-object v9, v0, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->A:Ljava/lang/String;

    .line 348
    .line 349
    if-eqz v9, :cond_17

    .line 350
    .line 351
    const/4 v3, 0x3

    .line 352
    new-array v10, v3, [Ll9/g;

    .line 353
    .line 354
    new-instance v11, Ll9/g;

    .line 355
    .line 356
    invoke-direct {v11, v1, v9}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    aput-object v11, v10, v4

    .line 360
    .line 361
    new-instance v1, Ll9/g;

    .line 362
    .line 363
    invoke-direct {v1, v2, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    aput-object v1, v10, v5

    .line 367
    .line 368
    new-instance v1, Ll9/g;

    .line 369
    .line 370
    invoke-direct {v1, v8, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    aput-object v1, v10, v6

    .line 374
    .line 375
    new-instance p1, Landroidx/work/Data$Builder;

    .line 376
    .line 377
    invoke-direct {p1}, Landroidx/work/Data$Builder;-><init>()V

    .line 378
    .line 379
    .line 380
    :goto_10
    if-ge v4, v3, :cond_16

    .line 381
    .line 382
    aget-object v1, v10, v4

    .line 383
    .line 384
    add-int/lit8 v4, v4, 0x1

    .line 385
    .line 386
    iget-object v2, v1, Ll9/g;->a:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v2, Ljava/lang/String;

    .line 389
    .line 390
    iget-object v1, v1, Ll9/g;->b:Ljava/lang/Object;

    .line 391
    .line 392
    invoke-virtual {p1, v2, v1}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 393
    .line 394
    .line 395
    goto :goto_10

    .line 396
    :cond_16
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    const-string v1, "dataBuilder.build()"

    .line 401
    .line 402
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 406
    .line 407
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker;

    .line 408
    .line 409
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 417
    .line 418
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    const-string v1, "OneTimeWorkRequestBuilde\u2026\n                .build()"

    .line 423
    .line 424
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 428
    .line 429
    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 434
    .line 435
    .line 436
    goto :goto_12

    .line 437
    :cond_17
    invoke-static {v10}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v3

    .line 441
    :cond_18
    invoke-static {v10}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v3

    .line 445
    :cond_19
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-nez v1, :cond_1c

    .line 450
    .line 451
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    if-eqz p1, :cond_1a

    .line 456
    .line 457
    const-string v1, "errorType"

    .line 458
    .line 459
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    goto :goto_11

    .line 464
    :cond_1a
    move-object p1, v3

    .line 465
    :goto_11
    const-string v1, "0"

    .line 466
    .line 467
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result p1

    .line 471
    if-eqz p1, :cond_1b

    .line 472
    .line 473
    const-string p1, "warning"

    .line 474
    .line 475
    const v1, 0x7f13029d

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0, v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->L(ILjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :cond_1b
    invoke-virtual {v0, v3, v3, v4}, Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;->F(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 482
    .line 483
    .line 484
    :cond_1c
    :goto_12
    return-void
.end method
