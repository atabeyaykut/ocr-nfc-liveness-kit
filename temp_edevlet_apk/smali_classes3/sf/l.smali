.class public final Lsf/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcf/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lsf/l;->a:I

    iput-object p2, p0, Lsf/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr0/p;)Laf/c;
    .locals 13

    .line 1
    iget v0, p0, Lsf/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lsf/l;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_0
    check-cast p1, Lkh/d;

    .line 11
    .line 12
    check-cast v1, Luf/e;

    .line 13
    .line 14
    iget-object v0, v1, Luf/e;->a:Lk9/a;

    .line 15
    .line 16
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lkh/h;

    .line 21
    .line 22
    new-instance v1, Lkh/e;

    .line 23
    .line 24
    invoke-direct {v1, p1, v0}, Lkh/e;-><init>(Lkh/d;Lkh/h;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_1
    check-cast p1, Lhh/f;

    .line 29
    .line 30
    check-cast v1, Lsf/k;

    .line 31
    .line 32
    iget-object v0, v1, Lsf/k;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lk9/a;

    .line 35
    .line 36
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lhh/h;

    .line 41
    .line 42
    iget-object v2, v1, Lsf/k;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lk9/a;

    .line 45
    .line 46
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lhh/c;

    .line 51
    .line 52
    iget-object v1, v1, Lsf/k;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Lk9/a;

    .line 55
    .line 56
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lhh/a;

    .line 61
    .line 62
    new-instance v3, Lhh/g;

    .line 63
    .line 64
    invoke-direct {v3, p1, v0, v2, v1}, Lhh/g;-><init>(Lhh/f;Lhh/h;Lhh/c;Lhh/a;)V

    .line 65
    .line 66
    .line 67
    return-object v3

    .line 68
    :pswitch_2
    move-object v5, p1

    .line 69
    check-cast v5, Lzg/k;

    .line 70
    .line 71
    check-cast v1, Lr4/j4;

    .line 72
    .line 73
    iget-object p1, v1, Lr4/j4;->a:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lk9/a;

    .line 76
    .line 77
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    move-object v6, p1

    .line 82
    check-cast v6, Lzg/u;

    .line 83
    .line 84
    iget-object p1, v1, Lr4/j4;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lk9/a;

    .line 87
    .line 88
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    move-object v7, p1

    .line 93
    check-cast v7, Lzg/f;

    .line 94
    .line 95
    iget-object p1, v1, Lr4/j4;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lk9/a;

    .line 98
    .line 99
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    move-object v8, p1

    .line 104
    check-cast v8, Lzg/h;

    .line 105
    .line 106
    iget-object p1, v1, Lr4/j4;->d:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Lk9/a;

    .line 109
    .line 110
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    move-object v9, p1

    .line 115
    check-cast v9, Lzg/g;

    .line 116
    .line 117
    iget-object p1, v1, Lr4/j4;->e:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lk9/a;

    .line 120
    .line 121
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    move-object v10, p1

    .line 126
    check-cast v10, Lzg/c;

    .line 127
    .line 128
    iget-object p1, v1, Lr4/j4;->f:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Lk9/a;

    .line 131
    .line 132
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    move-object v11, p1

    .line 137
    check-cast v11, Lzg/b;

    .line 138
    .line 139
    iget-object p1, v1, Lr4/j4;->g:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Lk9/a;

    .line 142
    .line 143
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    move-object v12, p1

    .line 148
    check-cast v12, Lzg/j;

    .line 149
    .line 150
    new-instance p1, Lzg/l;

    .line 151
    .line 152
    move-object v4, p1

    .line 153
    invoke-direct/range {v4 .. v12}, Lzg/l;-><init>(Lzg/k;Lzg/u;Lzg/f;Lzg/h;Lzg/g;Lzg/c;Lzg/b;Lzg/j;)V

    .line 154
    .line 155
    .line 156
    return-object p1

    .line 157
    :pswitch_3
    check-cast p1, Lyg/c;

    .line 158
    .line 159
    check-cast v1, Ll3/w;

    .line 160
    .line 161
    iget-object v0, v1, Ll3/w;->a:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Lk9/a;

    .line 164
    .line 165
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lyg/i;

    .line 170
    .line 171
    iget-object v1, v1, Ll3/w;->b:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Lk9/a;

    .line 174
    .line 175
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lyg/a;

    .line 180
    .line 181
    new-instance v2, Lyg/d;

    .line 182
    .line 183
    invoke-direct {v2, p1, v0, v1}, Lyg/d;-><init>(Lyg/c;Lyg/i;Lyg/a;)V

    .line 184
    .line 185
    .line 186
    return-object v2

    .line 187
    :pswitch_4
    check-cast p1, Lag/c;

    .line 188
    .line 189
    check-cast v1, Lsf/k;

    .line 190
    .line 191
    iget-object v0, v1, Lsf/k;->a:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Lk9/a;

    .line 194
    .line 195
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lag/i;

    .line 200
    .line 201
    iget-object v2, v1, Lsf/k;->b:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v2, Lk9/a;

    .line 204
    .line 205
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    check-cast v2, Lbg/c;

    .line 210
    .line 211
    iget-object v1, v1, Lsf/k;->c:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v1, Lk9/a;

    .line 214
    .line 215
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Lbg/d;

    .line 220
    .line 221
    new-instance v3, Lag/d;

    .line 222
    .line 223
    invoke-direct {v3, p1, v0, v2, v1}, Lag/d;-><init>(Lag/c;Lag/i;Lbg/c;Lbg/d;)V

    .line 224
    .line 225
    .line 226
    return-object v3

    .line 227
    :pswitch_5
    check-cast p1, Luf/c;

    .line 228
    .line 229
    check-cast v1, Luf/e;

    .line 230
    .line 231
    iget-object v0, v1, Luf/e;->a:Lk9/a;

    .line 232
    .line 233
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Luf/f;

    .line 238
    .line 239
    new-instance v1, Luf/d;

    .line 240
    .line 241
    invoke-direct {v1, p1, v0}, Luf/d;-><init>(Luf/c;Luf/f;)V

    .line 242
    .line 243
    .line 244
    return-object v1

    .line 245
    :pswitch_6
    check-cast p1, Lsf/c;

    .line 246
    .line 247
    check-cast v1, Lsf/k;

    .line 248
    .line 249
    iget-object v0, v1, Lsf/k;->a:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Lk9/a;

    .line 252
    .line 253
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Lsf/m;

    .line 258
    .line 259
    iget-object v2, v1, Lsf/k;->b:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v2, Lk9/a;

    .line 262
    .line 263
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Lrf/d;

    .line 268
    .line 269
    iget-object v1, v1, Lsf/k;->c:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v1, Lk9/a;

    .line 272
    .line 273
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Lrf/n;

    .line 278
    .line 279
    new-instance v3, Lsf/d;

    .line 280
    .line 281
    invoke-direct {v3, p1, v0, v2, v1}, Lsf/d;-><init>(Lsf/c;Lsf/m;Lrf/d;Lrf/n;)V

    .line 282
    .line 283
    .line 284
    return-object v3

    .line 285
    :goto_0
    check-cast p1, Luh/c;

    .line 286
    .line 287
    check-cast v1, Luf/e;

    .line 288
    .line 289
    iget-object v0, v1, Luf/e;->a:Lk9/a;

    .line 290
    .line 291
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Luh/e;

    .line 296
    .line 297
    new-instance v1, Lwh/a;

    .line 298
    .line 299
    invoke-direct {v1, p1, v0}, Lwh/a;-><init>(Luh/c;Luh/e;)V

    .line 300
    .line 301
    .line 302
    return-object v1

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
