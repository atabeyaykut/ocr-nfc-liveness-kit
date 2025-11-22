.class public final Lc5/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lc5/s4;->a:I

    iput-object p1, p0, Lc5/s4;->d:Ljava/lang/Object;

    iput-object p2, p0, Lc5/s4;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc5/s4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lc5/s4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lc5/w4;

    .line 10
    .line 11
    iget-object v1, v0, Lc5/w4;->a:Lc5/o7;

    .line 12
    .line 13
    invoke-virtual {v1}, Lc5/o7;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lc5/w4;->a:Lc5/o7;

    .line 17
    .line 18
    iget-object v1, p0, Lc5/s4;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lc5/s;

    .line 21
    .line 22
    iget-object v2, p0, Lc5/s4;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lc5/o7;->e(Lc5/s;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_0
    iget-object v0, p0, Lc5/s4;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lc5/t6;

    .line 38
    .line 39
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 40
    .line 41
    check-cast v1, Lc5/i4;

    .line 42
    .line 43
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 44
    .line 45
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lc5/s3;->n()Lc5/f;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lc5/f;->f()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lc5/t6;

    .line 61
    .line 62
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 63
    .line 64
    check-cast v1, Lc5/i4;

    .line 65
    .line 66
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 67
    .line 68
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Lc5/e3;->l:Lc5/c3;

    .line 72
    .line 73
    const-string v2, "Analytics storage consent denied; will not get app instance id"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, Lc5/t6;

    .line 81
    .line 82
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 83
    .line 84
    check-cast v1, Lc5/i4;

    .line 85
    .line 86
    iget-object v1, v1, Lc5/i4;->r:Lc5/v5;

    .line 87
    .line 88
    invoke-static {v1}, Lc5/i4;->d(Lc5/r3;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v1, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, Lc5/t6;

    .line 100
    .line 101
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 102
    .line 103
    check-cast v1, Lc5/i4;

    .line 104
    .line 105
    iget-object v1, v1, Lc5/i4;->h:Lc5/s3;

    .line 106
    .line 107
    invoke-static {v1}, Lc5/i4;->c(Lc5/y4;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v1, Lc5/s3;->f:Lc5/q3;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lc5/s4;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    :try_start_1
    iget-object v1, p0, Lc5/s4;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    .line 126
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :catchall_0
    move-exception v1

    .line 132
    goto/16 :goto_6

    .line 133
    .line 134
    :catch_0
    move-exception v1

    .line 135
    goto :goto_3

    .line 136
    :cond_0
    :try_start_2
    iget-object v1, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v2, v1

    .line 139
    check-cast v2, Lc5/t6;

    .line 140
    .line 141
    iget-object v2, v2, Lc5/t6;->d:Lc5/v2;

    .line 142
    .line 143
    if-nez v2, :cond_1

    .line 144
    .line 145
    check-cast v1, Lc5/t6;

    .line 146
    .line 147
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 148
    .line 149
    check-cast v1, Lc5/i4;

    .line 150
    .line 151
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 152
    .line 153
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v1, Lc5/e3;->f:Lc5/c3;

    .line 157
    .line 158
    const-string v2, "Failed to get app instance id"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .line 162
    .line 163
    :try_start_3
    iget-object v1, p0, Lc5/s4;->b:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_1
    :try_start_4
    iget-object v1, p0, Lc5/s4;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lc5/y7;

    .line 171
    .line 172
    invoke-static {v1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lc5/s4;->b:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    .line 179
    iget-object v3, p0, Lc5/s4;->c:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v3, Lc5/y7;

    .line 182
    .line 183
    invoke-interface {v2, v3}, Lc5/v2;->o(Lc5/y7;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lc5/s4;->b:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v1, :cond_2

    .line 201
    .line 202
    iget-object v2, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v2, Lc5/t6;

    .line 205
    .line 206
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 207
    .line 208
    check-cast v2, Lc5/i4;

    .line 209
    .line 210
    iget-object v2, v2, Lc5/i4;->r:Lc5/v5;

    .line 211
    .line 212
    invoke-static {v2}, Lc5/i4;->d(Lc5/r3;)V

    .line 213
    .line 214
    .line 215
    iget-object v2, v2, Lc5/v5;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 216
    .line 217
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v2, Lc5/t6;

    .line 223
    .line 224
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 225
    .line 226
    check-cast v2, Lc5/i4;

    .line 227
    .line 228
    iget-object v2, v2, Lc5/i4;->h:Lc5/s3;

    .line 229
    .line 230
    invoke-static {v2}, Lc5/i4;->c(Lc5/y4;)V

    .line 231
    .line 232
    .line 233
    iget-object v2, v2, Lc5/s3;->f:Lc5/q3;

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Lc5/q3;->b(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_2
    iget-object v1, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v1, Lc5/t6;

    .line 241
    .line 242
    invoke-virtual {v1}, Lc5/t6;->s()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    .line 244
    .line 245
    :goto_2
    :try_start_5
    iget-object v1, p0, Lc5/s4;->b:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :goto_3
    :try_start_6
    iget-object v2, p0, Lc5/s4;->d:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v2, Lc5/t6;

    .line 251
    .line 252
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 253
    .line 254
    check-cast v2, Lc5/i4;

    .line 255
    .line 256
    iget-object v2, v2, Lc5/i4;->j:Lc5/e3;

    .line 257
    .line 258
    invoke-static {v2}, Lc5/i4;->e(Lc5/y4;)V

    .line 259
    .line 260
    .line 261
    iget-object v2, v2, Lc5/e3;->f:Lc5/c3;

    .line 262
    .line 263
    const-string v3, "Failed to get app instance id"

    .line 264
    .line 265
    invoke-virtual {v2, v1, v3}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :goto_4
    :try_start_7
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :goto_5
    monitor-exit v0

    .line 274
    return-void

    .line 275
    :goto_6
    iget-object v2, p0, Lc5/s4;->b:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 280
    .line 281
    .line 282
    throw v1

    .line 283
    :catchall_1
    move-exception v1

    .line 284
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 285
    throw v1

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
