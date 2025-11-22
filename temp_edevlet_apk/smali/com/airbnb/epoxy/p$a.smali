.class public final Lcom/airbnb/epoxy/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/epoxy/p;


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/p;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/airbnb/epoxy/p;->access$002(Lcom/airbnb/epoxy/p;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/airbnb/epoxy/p;->cancelPendingModelBuild()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/airbnb/epoxy/p;->access$100(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/airbnb/epoxy/h;->resetAutoModels()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 25
    .line 26
    new-instance v1, Lcom/airbnb/epoxy/j;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/airbnb/epoxy/p;->access$300(Lcom/airbnb/epoxy/p;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-direct {v1, v2}, Lcom/airbnb/epoxy/j;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/airbnb/epoxy/p;->access$202(Lcom/airbnb/epoxy/p;Lcom/airbnb/epoxy/j;)Lcom/airbnb/epoxy/j;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/airbnb/epoxy/p;->access$400(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/n0;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "Models built"

    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/airbnb/epoxy/n0;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    const/4 v1, 0x0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/airbnb/epoxy/p;->buildModels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/airbnb/epoxy/p;->addCurrentlyStagedModelIfExists()V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/airbnb/epoxy/p;->access$400(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/n0;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2}, Lcom/airbnb/epoxy/n0;->stop()V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/airbnb/epoxy/p;->access$700(Lcom/airbnb/epoxy/p;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/airbnb/epoxy/p;->access$200(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/j;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcom/airbnb/epoxy/p;->access$800(Lcom/airbnb/epoxy/p;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/airbnb/epoxy/p;->access$200(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/j;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    sget-object v3, Lcom/airbnb/epoxy/j;->c:Lcom/airbnb/epoxy/j$a;

    .line 93
    .line 94
    iput-object v3, v2, Lcom/airbnb/epoxy/g0;->b:Lcom/airbnb/epoxy/g0$c;

    .line 95
    .line 96
    iget-boolean v3, v2, Lcom/airbnb/epoxy/g0;->a:Z

    .line 97
    .line 98
    if-eqz v3, :cond_8

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    iput-boolean v3, v2, Lcom/airbnb/epoxy/g0;->a:Z

    .line 102
    .line 103
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/airbnb/epoxy/p;->access$400(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/n0;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v4, "Models diffed"

    .line 110
    .line 111
    invoke-interface {v2, v4}, Lcom/airbnb/epoxy/n0;->b(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 115
    .line 116
    invoke-static {v2}, Lcom/airbnb/epoxy/p;->access$900(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/q;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v4, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 121
    .line 122
    invoke-static {v4}, Lcom/airbnb/epoxy/p;->access$200(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/j;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    iget-object v4, v2, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 127
    .line 128
    iget-object v4, v4, Lcom/airbnb/epoxy/d;->f:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-nez v5, :cond_0

    .line 135
    .line 136
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Lcom/airbnb/epoxy/u;

    .line 141
    .line 142
    invoke-virtual {v5}, Lcom/airbnb/epoxy/u;->isDebugValidationEnabled()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_0

    .line 147
    .line 148
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-ge v3, v5, :cond_0

    .line 153
    .line 154
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Lcom/airbnb/epoxy/u;

    .line 159
    .line 160
    const-string v6, "The model was changed between being bound and when models were rebuilt"

    .line 161
    .line 162
    invoke-virtual {v5, v6, v3}, Lcom/airbnb/epoxy/u;->validateStateHasNotChangedSinceAdded(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v3, v3, 0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_0
    iget-object v6, v2, Lcom/airbnb/epoxy/q;->g:Lcom/airbnb/epoxy/d;

    .line 169
    .line 170
    monitor-enter v6

    .line 171
    :try_start_1
    iget-object v2, v6, Lcom/airbnb/epoxy/d;->d:Lcom/airbnb/epoxy/d$b;

    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/airbnb/epoxy/d$b;->c()I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    iget-object v10, v6, Lcom/airbnb/epoxy/d;->e:Ljava/util/List;

    .line 178
    .line 179
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-ne v9, v10, :cond_2

    .line 181
    .line 182
    if-nez v10, :cond_1

    .line 183
    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    :cond_1
    new-instance v2, Lcom/airbnb/epoxy/m;

    .line 189
    .line 190
    invoke-direct {v2, v10, v10, v1}, Lcom/airbnb/epoxy/m;-><init>(Ljava/util/List;Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_2
    if-eqz v9, :cond_6

    .line 195
    .line 196
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_3

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_3
    if-eqz v10, :cond_5

    .line 204
    .line 205
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_4

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_4
    new-instance v7, Lcom/airbnb/epoxy/d$a;

    .line 213
    .line 214
    iget-object v2, v6, Lcom/airbnb/epoxy/d;->c:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 215
    .line 216
    invoke-direct {v7, v10, v9, v2}, Lcom/airbnb/epoxy/d$a;-><init>(Ljava/util/List;Lcom/airbnb/epoxy/j;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 217
    .line 218
    .line 219
    iget-object v2, v6, Lcom/airbnb/epoxy/d;->a:Lcom/airbnb/epoxy/z;

    .line 220
    .line 221
    new-instance v3, Lcom/airbnb/epoxy/b;

    .line 222
    .line 223
    move-object v5, v3

    .line 224
    invoke-direct/range {v5 .. v10}, Lcom/airbnb/epoxy/b;-><init>(Lcom/airbnb/epoxy/d;Lcom/airbnb/epoxy/d$a;ILcom/airbnb/epoxy/j;Ljava/util/List;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Lcom/airbnb/epoxy/z;->execute(Ljava/lang/Runnable;)V

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_5
    :goto_1
    new-instance v2, Lcom/airbnb/epoxy/m;

    .line 232
    .line 233
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 234
    .line 235
    invoke-direct {v2, v3, v9, v1}, Lcom/airbnb/epoxy/m;-><init>(Ljava/util/List;Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    .line 236
    .line 237
    .line 238
    :goto_2
    sget-object v3, Lcom/airbnb/epoxy/e0;->c:Lcom/airbnb/epoxy/e0;

    .line 239
    .line 240
    new-instance v4, Lcom/airbnb/epoxy/c;

    .line 241
    .line 242
    invoke-direct {v4, v8, v6, v2, v9}, Lcom/airbnb/epoxy/c;-><init>(ILcom/airbnb/epoxy/d;Lcom/airbnb/epoxy/m;Ljava/util/List;)V

    .line 243
    .line 244
    .line 245
    :goto_3
    invoke-virtual {v3, v4}, Lcom/airbnb/epoxy/z;->execute(Ljava/lang/Runnable;)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    .line 250
    .line 251
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_7

    .line 256
    .line 257
    new-instance v2, Lcom/airbnb/epoxy/m;

    .line 258
    .line 259
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 260
    .line 261
    invoke-direct {v2, v10, v3, v1}, Lcom/airbnb/epoxy/m;-><init>(Ljava/util/List;Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_7
    move-object v2, v1

    .line 266
    :goto_5
    sget-object v3, Lcom/airbnb/epoxy/e0;->c:Lcom/airbnb/epoxy/e0;

    .line 267
    .line 268
    new-instance v4, Lcom/airbnb/epoxy/c;

    .line 269
    .line 270
    invoke-direct {v4, v8, v6, v2, v1}, Lcom/airbnb/epoxy/c;-><init>(ILcom/airbnb/epoxy/d;Lcom/airbnb/epoxy/m;Ljava/util/List;)V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :goto_6
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 275
    .line 276
    invoke-static {v2}, Lcom/airbnb/epoxy/p;->access$400(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/n0;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-interface {v2}, Lcom/airbnb/epoxy/n0;->stop()V

    .line 281
    .line 282
    .line 283
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 284
    .line 285
    invoke-static {v2, v1}, Lcom/airbnb/epoxy/p;->access$202(Lcom/airbnb/epoxy/p;Lcom/airbnb/epoxy/j;)Lcom/airbnb/epoxy/j;

    .line 286
    .line 287
    .line 288
    iget-object v2, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 289
    .line 290
    invoke-static {v2, v0}, Lcom/airbnb/epoxy/p;->access$502(Lcom/airbnb/epoxy/p;Z)Z

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 294
    .line 295
    invoke-static {v0, v1}, Lcom/airbnb/epoxy/p;->access$002(Lcom/airbnb/epoxy/p;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    throw v0

    .line 302
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 303
    .line 304
    const-string v1, "Notifications already resumed"

    .line 305
    .line 306
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v0

    .line 310
    :catchall_1
    move-exception v2

    .line 311
    iget-object v3, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 312
    .line 313
    invoke-static {v3}, Lcom/airbnb/epoxy/p;->access$400(Lcom/airbnb/epoxy/p;)Lcom/airbnb/epoxy/n0;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-interface {v3}, Lcom/airbnb/epoxy/n0;->stop()V

    .line 318
    .line 319
    .line 320
    iget-object v3, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 321
    .line 322
    invoke-static {v3, v1}, Lcom/airbnb/epoxy/p;->access$202(Lcom/airbnb/epoxy/p;Lcom/airbnb/epoxy/j;)Lcom/airbnb/epoxy/j;

    .line 323
    .line 324
    .line 325
    iget-object v3, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 326
    .line 327
    invoke-static {v3, v0}, Lcom/airbnb/epoxy/p;->access$502(Lcom/airbnb/epoxy/p;Z)Z

    .line 328
    .line 329
    .line 330
    iget-object v0, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 331
    .line 332
    invoke-static {v0, v1}, Lcom/airbnb/epoxy/p;->access$002(Lcom/airbnb/epoxy/p;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Lcom/airbnb/epoxy/p$a;->a:Lcom/airbnb/epoxy/p;

    .line 336
    .line 337
    invoke-static {v0, v1}, Lcom/airbnb/epoxy/p;->access$602(Lcom/airbnb/epoxy/p;Lcom/airbnb/epoxy/u;)Lcom/airbnb/epoxy/u;

    .line 338
    .line 339
    .line 340
    throw v2
.end method
