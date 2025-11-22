.class public final Lo3/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lo3/y0;

.field public final synthetic b:Lo3/a1;


# direct methods
.method public constructor <init>(Lo3/r;Lo3/y0;)V
    .locals 0

    iput-object p1, p0, Lo3/z0;->b:Lo3/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo3/z0;->a:Lo3/y0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/z0;->b:Lo3/a1;

    .line 2
    .line 3
    iget-boolean v0, v0, Lo3/a1;->b:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lo3/z0;->a:Lo3/y0;

    .line 9
    .line 10
    iget-object v0, v0, Lo3/y0;->b:Lm3/b;

    .line 11
    .line 12
    iget v1, v0, Lm3/b;->b:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lm3/b;->c:Landroid/app/PendingIntent;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lo3/z0;->b:Lo3/a1;

    .line 28
    .line 29
    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lo3/g;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v0, v0, Lm3/b;->c:Landroid/app/PendingIntent;

    .line 36
    .line 37
    invoke-static {v0}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Lo3/z0;->a:Lo3/y0;

    .line 41
    .line 42
    iget v5, v5, Lo3/y0;->a:I

    .line 43
    .line 44
    sget v6, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    .line 45
    .line 46
    new-instance v6, Landroid/content/Intent;

    .line 47
    .line 48
    const-class v7, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 49
    .line 50
    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "pending_intent"

    .line 54
    .line 55
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string v0, "failing_client_id"

    .line 59
    .line 60
    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string v0, "notify_manager"

    .line 64
    .line 65
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-interface {v4, v6, v2}, Lo3/g;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    iget-object v1, p0, Lo3/z0;->b:Lo3/a1;

    .line 73
    .line 74
    iget-object v4, v1, Lo3/a1;->e:Lm3/e;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget v5, v0, Lm3/b;->b:I

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-virtual {v4, v1, v5, v6}, Lm3/e;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    iget-object v1, p0, Lo3/z0;->b:Lo3/a1;

    .line 90
    .line 91
    iget-object v2, v1, Lo3/a1;->e:Lm3/e;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v3, p0, Lo3/z0;->b:Lo3/a1;

    .line 98
    .line 99
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lo3/g;

    .line 100
    .line 101
    iget v0, v0, Lm3/b;->b:I

    .line 102
    .line 103
    invoke-virtual {v2, v1, v4, v0, v3}, Lm3/e;->h(Landroid/app/Activity;Lo3/g;ILo3/a1;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    iget v1, v0, Lm3/b;->b:I

    .line 108
    .line 109
    const/16 v4, 0x12

    .line 110
    .line 111
    if-ne v1, v4, :cond_d

    .line 112
    .line 113
    iget-object v0, p0, Lo3/z0;->b:Lo3/a1;

    .line 114
    .line 115
    iget-object v1, v0, Lo3/a1;->e:Lm3/e;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v5, p0, Lo3/z0;->b:Lo3/a1;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v1, Landroid/widget/ProgressBar;

    .line 127
    .line 128
    const v7, 0x101007a

    .line 129
    .line 130
    .line 131
    invoke-direct {v1, v0, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    new-instance v7, Landroid/app/AlertDialog$Builder;

    .line 141
    .line 142
    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 146
    .line 147
    .line 148
    invoke-static {v4, v0}, Lr3/a0;->c(ILandroid/content/Context;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    .line 154
    .line 155
    const-string v1, ""

    .line 156
    .line 157
    invoke-virtual {v7, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v4, "GooglePlayServicesUpdatingDialog"

    .line 165
    .line 166
    invoke-static {v0, v1, v4, v5}, Lm3/e;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lo3/z0;->b:Lo3/a1;

    .line 170
    .line 171
    iget-object v4, v0, Lo3/a1;->e:Lm3/e;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v5, Lqd/f;

    .line 182
    .line 183
    invoke-direct {v5, p0, v1}, Lqd/f;-><init>(Lo3/z0;Landroid/app/AlertDialog;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance v4, Landroid/content/IntentFilter;

    .line 190
    .line 191
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    .line 192
    .line 193
    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v7, "package"

    .line 197
    .line 198
    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance v7, Lo3/f0;

    .line 202
    .line 203
    invoke-direct {v7, v5}, Lo3/f0;-><init>(Lqd/f;)V

    .line 204
    .line 205
    .line 206
    sget v5, Lh4/g;->a:I

    .line 207
    .line 208
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 209
    .line 210
    const/16 v8, 0x54

    .line 211
    .line 212
    const/16 v9, 0x21

    .line 213
    .line 214
    if-ge v5, v9, :cond_5

    .line 215
    .line 216
    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-ne v10, v8, :cond_4

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_4
    const/4 v10, 0x0

    .line 226
    goto :goto_2

    .line 227
    :cond_5
    :goto_1
    const/4 v10, 0x1

    .line 228
    :goto_2
    if-eqz v10, :cond_9

    .line 229
    .line 230
    if-ge v5, v9, :cond_7

    .line 231
    .line 232
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-ne v5, v8, :cond_6

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_6
    const/4 v5, 0x0

    .line 242
    goto :goto_4

    .line 243
    :cond_7
    :goto_3
    const/4 v5, 0x1

    .line 244
    :goto_4
    if-eq v2, v5, :cond_8

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_8
    const/4 v3, 0x2

    .line 248
    :goto_5
    invoke-static {v0, v7, v4, v3}, Landroidx/appcompat/app/e;->g(Landroid/content/Context;Lo3/f0;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_9
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    :goto_6
    iput-object v0, v7, Lo3/f0;->a:Landroid/content/Context;

    .line 256
    .line 257
    invoke-static {v0}, Lm3/j;->c(Landroid/content/Context;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_c

    .line 262
    .line 263
    iget-object v0, p0, Lo3/z0;->b:Lo3/a1;

    .line 264
    .line 265
    iget-object v2, v0, Lo3/a1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 266
    .line 267
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    check-cast v0, Lo3/r;

    .line 271
    .line 272
    iget-object v0, v0, Lo3/r;->g:Lo3/d;

    .line 273
    .line 274
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 275
    .line 276
    const/4 v2, 0x3

    .line 277
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .line 283
    .line 284
    check-cast v1, Landroid/app/Dialog;

    .line 285
    .line 286
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_a

    .line 291
    .line 292
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 293
    .line 294
    .line 295
    :cond_a
    monitor-enter v7

    .line 296
    :try_start_0
    iget-object v0, v7, Lo3/f0;->a:Landroid/content/Context;

    .line 297
    .line 298
    if-eqz v0, :cond_b

    .line 299
    .line 300
    invoke-virtual {v0, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    .line 302
    .line 303
    :cond_b
    iput-object v6, v7, Lo3/f0;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .line 305
    monitor-exit v7

    .line 306
    goto :goto_7

    .line 307
    :catchall_0
    move-exception v0

    .line 308
    monitor-exit v7

    .line 309
    throw v0

    .line 310
    :cond_c
    :goto_7
    return-void

    .line 311
    :cond_d
    iget-object v1, p0, Lo3/z0;->b:Lo3/a1;

    .line 312
    .line 313
    iget-object v2, p0, Lo3/z0;->a:Lo3/y0;

    .line 314
    .line 315
    iget v2, v2, Lo3/y0;->a:I

    .line 316
    .line 317
    invoke-virtual {v1, v0, v2}, Lo3/a1;->h(Lm3/b;I)V

    .line 318
    .line 319
    .line 320
    return-void
.end method
