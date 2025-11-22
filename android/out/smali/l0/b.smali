.class public abstract Ll0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/e;
.implements Lg0/a$a;
.implements Li0/f;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Le0/a;

.field public final d:Le0/a;

.field public final e:Le0/a;

.field public final f:Le0/a;

.field public final g:Le0/a;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/Matrix;

.field public final m:Ld0/l;

.field public final n:Ll0/e;

.field public final o:Lg0/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:Lg0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:Ll0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:Ll0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll0/b;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/ArrayList;

.field public final u:Lg0/o;

.field public v:Z

.field public w:Z

.field public x:Le0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld0/l;Ll0/e;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll0/b;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ll0/b;->b:Landroid/graphics/Matrix;

    .line 17
    .line 18
    new-instance v0, Le0/a;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Le0/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ll0/b;->c:Le0/a;

    .line 25
    .line 26
    new-instance v0, Le0/a;

    .line 27
    .line 28
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v0, v2, v3}, Le0/a;-><init>(Landroid/graphics/PorterDuff$Mode;I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Ll0/b;->d:Le0/a;

    .line 35
    .line 36
    new-instance v0, Le0/a;

    .line 37
    .line 38
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 39
    .line 40
    invoke-direct {v0, v2, v3}, Le0/a;-><init>(Landroid/graphics/PorterDuff$Mode;I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Ll0/b;->e:Le0/a;

    .line 44
    .line 45
    new-instance v0, Le0/a;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Le0/a;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Ll0/b;->f:Le0/a;

    .line 51
    .line 52
    new-instance v2, Le0/a;

    .line 53
    .line 54
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 55
    .line 56
    invoke-direct {v2, v3}, Le0/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Ll0/b;->g:Le0/a;

    .line 60
    .line 61
    new-instance v2, Landroid/graphics/RectF;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Ll0/b;->h:Landroid/graphics/RectF;

    .line 67
    .line 68
    new-instance v2, Landroid/graphics/RectF;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Ll0/b;->i:Landroid/graphics/RectF;

    .line 74
    .line 75
    new-instance v2, Landroid/graphics/RectF;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Ll0/b;->j:Landroid/graphics/RectF;

    .line 81
    .line 82
    new-instance v2, Landroid/graphics/RectF;

    .line 83
    .line 84
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Ll0/b;->k:Landroid/graphics/RectF;

    .line 88
    .line 89
    new-instance v2, Landroid/graphics/Matrix;

    .line 90
    .line 91
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Ll0/b;->l:Landroid/graphics/Matrix;

    .line 95
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v2, p0, Ll0/b;->t:Ljava/util/ArrayList;

    .line 102
    .line 103
    iput-boolean v1, p0, Ll0/b;->v:Z

    .line 104
    .line 105
    iput-object p1, p0, Ll0/b;->m:Ld0/l;

    .line 106
    .line 107
    iput-object p2, p0, Ll0/b;->n:Ll0/e;

    .line 108
    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v2, p2, Ll0/e;->c:Ljava/lang/String;

    .line 115
    .line 116
    const-string v3, "#draw"

    .line 117
    .line 118
    invoke-static {p1, v2, v3}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    const/4 p1, 0x3

    .line 122
    iget v2, p2, Ll0/e;->u:I

    .line 123
    .line 124
    if-ne v2, p1, :cond_0

    .line 125
    .line 126
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 127
    .line 128
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 129
    .line 130
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 135
    .line 136
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 137
    .line 138
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 142
    .line 143
    .line 144
    iget-object p1, p2, Ll0/e;->i:Lj0/l;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v0, Lg0/o;

    .line 150
    .line 151
    invoke-direct {v0, p1}, Lg0/o;-><init>(Lj0/l;)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Ll0/b;->u:Lg0/o;

    .line 155
    .line 156
    invoke-virtual {v0, p0}, Lg0/o;->b(Lg0/a$a;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p2, Ll0/e;->h:Ljava/util/List;

    .line 160
    .line 161
    if-eqz p1, :cond_2

    .line 162
    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-nez p2, :cond_2

    .line 168
    .line 169
    new-instance p2, Lg0/g;

    .line 170
    .line 171
    invoke-direct {p2, p1}, Lg0/g;-><init>(Ljava/util/List;)V

    .line 172
    .line 173
    .line 174
    iput-object p2, p0, Ll0/b;->o:Lg0/g;

    .line 175
    .line 176
    iget-object p1, p2, Lg0/g;->a:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p1, Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p2, :cond_1

    .line 189
    .line 190
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Lg0/a;

    .line 195
    .line 196
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_1
    iget-object p1, p0, Ll0/b;->o:Lg0/g;

    .line 201
    .line 202
    iget-object p1, p1, Lg0/g;->b:Ljava/io/Serializable;

    .line 203
    .line 204
    check-cast p1, Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_2

    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    check-cast p2, Lg0/a;

    .line 221
    .line 222
    invoke-virtual {p0, p2}, Ll0/b;->e(Lg0/a;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, p0}, Lg0/a;->a(Lg0/a$a;)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_2
    iget-object p1, p0, Ll0/b;->n:Ll0/e;

    .line 230
    .line 231
    iget-object p2, p1, Ll0/e;->t:Ljava/util/List;

    .line 232
    .line 233
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-nez p2, :cond_5

    .line 238
    .line 239
    new-instance p2, Lg0/c;

    .line 240
    .line 241
    iget-object p1, p1, Ll0/e;->t:Ljava/util/List;

    .line 242
    .line 243
    invoke-direct {p2, p1}, Lg0/c;-><init>(Ljava/util/List;)V

    .line 244
    .line 245
    .line 246
    iput-object p2, p0, Ll0/b;->p:Lg0/c;

    .line 247
    .line 248
    iput-boolean v1, p2, Lg0/a;->b:Z

    .line 249
    .line 250
    new-instance p1, Ll0/a;

    .line 251
    .line 252
    invoke-direct {p1, p0}, Ll0/a;-><init>(Ll0/b;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, p1}, Lg0/a;->a(Lg0/a$a;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Ll0/b;->p:Lg0/c;

    .line 259
    .line 260
    invoke-virtual {p1}, Lg0/a;->f()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, Ljava/lang/Float;

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    const/high16 p2, 0x3f800000    # 1.0f

    .line 271
    .line 272
    cmpl-float p1, p1, p2

    .line 273
    .line 274
    if-nez p1, :cond_3

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_3
    const/4 v1, 0x0

    .line 278
    :goto_3
    iget-boolean p1, p0, Ll0/b;->v:Z

    .line 279
    .line 280
    if-eq v1, p1, :cond_4

    .line 281
    .line 282
    iput-boolean v1, p0, Ll0/b;->v:Z

    .line 283
    .line 284
    iget-object p1, p0, Ll0/b;->m:Ld0/l;

    .line 285
    .line 286
    invoke-virtual {p1}, Ld0/l;->invalidateSelf()V

    .line 287
    .line 288
    .line 289
    :cond_4
    iget-object p1, p0, Ll0/b;->p:Lg0/c;

    .line 290
    .line 291
    invoke-virtual {p0, p1}, Ll0/b;->e(Lg0/a;)V

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_5
    iget-boolean p1, p0, Ll0/b;->v:Z

    .line 296
    .line 297
    if-eq v1, p1, :cond_6

    .line 298
    .line 299
    iput-boolean v1, p0, Ll0/b;->v:Z

    .line 300
    .line 301
    iget-object p1, p0, Ll0/b;->m:Ld0/l;

    .line 302
    .line 303
    invoke-virtual {p1}, Ld0/l;->invalidateSelf()V

    .line 304
    .line 305
    .line 306
    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ll0/b;->m:Ld0/l;

    invoke-virtual {v0}, Ld0/l;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf0/c;",
            ">;",
            "Ljava/util/List<",
            "Lf0/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final c(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll0/b;->q:Ll0/b;

    .line 2
    .line 3
    iget-object v1, p0, Ll0/b;->n:Ll0/e;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Ll0/b;->n:Ll0/e;

    .line 8
    .line 9
    iget-object v0, v0, Ll0/e;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Li0/e;

    .line 15
    .line 16
    invoke-direct {v2, p4}, Li0/e;-><init>(Li0/e;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Li0/e;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ll0/b;->q:Ll0/b;

    .line 25
    .line 26
    iget-object v0, v0, Ll0/b;->n:Ll0/e;

    .line 27
    .line 28
    iget-object v0, v0, Ll0/e;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Li0/e;->a(ILjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Ll0/b;->q:Ll0/b;

    .line 37
    .line 38
    new-instance v3, Li0/e;

    .line 39
    .line 40
    invoke-direct {v3, v2}, Li0/e;-><init>(Li0/e;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, v3, Li0/e;->b:Li0/f;

    .line 44
    .line 45
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, v1, Ll0/e;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, p2, v0}, Li0/e;->d(ILjava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Ll0/b;->q:Ll0/b;

    .line 57
    .line 58
    iget-object v0, v0, Ll0/b;->n:Ll0/e;

    .line 59
    .line 60
    iget-object v0, v0, Ll0/e;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p2, v0}, Li0/e;->b(ILjava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    add-int/2addr v0, p2

    .line 67
    iget-object v3, p0, Ll0/b;->q:Ll0/b;

    .line 68
    .line 69
    invoke-virtual {v3, p1, v0, p3, v2}, Ll0/b;->n(Li0/e;ILjava/util/ArrayList;Li0/e;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, v1, Ll0/e;->c:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, p2, v0}, Li0/e;->c(ILjava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    const-string v0, "__container"

    .line 82
    .line 83
    iget-object v1, v1, Ll0/e;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v0, Li0/e;

    .line 95
    .line 96
    invoke-direct {v0, p4}, Li0/e;-><init>(Li0/e;)V

    .line 97
    .line 98
    .line 99
    iget-object p4, v0, Li0/e;->a:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2, v1}, Li0/e;->a(ILjava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    if-eqz p4, :cond_3

    .line 109
    .line 110
    new-instance p4, Li0/e;

    .line 111
    .line 112
    invoke-direct {p4, v0}, Li0/e;-><init>(Li0/e;)V

    .line 113
    .line 114
    .line 115
    iput-object p0, p4, Li0/e;->b:Li0/f;

    .line 116
    .line 117
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_3
    move-object p4, v0

    .line 121
    :cond_4
    invoke-virtual {p1, p2, v1}, Li0/e;->d(ILjava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    invoke-virtual {p1, p2, v1}, Li0/e;->b(ILjava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    add-int/2addr v0, p2

    .line 132
    invoke-virtual {p0, p1, v0, p3, p4}, Ll0/b;->n(Li0/e;ILjava/util/ArrayList;Li0/e;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    return-void
.end method

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p1, p0, Ll0/b;->h:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Ll0/b;->h()V

    iget-object p1, p0, Ll0/b;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Ll0/b;->s:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    iget-object p3, p0, Ll0/b;->s:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ll0/b;

    iget-object p3, p3, Ll0/b;->u:Lg0/o;

    invoke-virtual {p3}, Lg0/o;->d()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ll0/b;->r:Ll0/b;

    if-eqz p2, :cond_1

    iget-object p2, p2, Ll0/b;->u:Lg0/o;

    invoke-virtual {p2}, Lg0/o;->d()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p2, p0, Ll0/b;->u:Lg0/o;

    invoke-virtual {p2}, Lg0/o;->d()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final e(Lg0/a;)V
    .locals 1
    .param p1    # Lg0/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ll0/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Lq0/c;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Ll0/b;->u:Lg0/o;

    invoke-virtual {v0, p1, p2}, Lg0/o;->c(Lq0/c;Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Ll0/b;->v:Z

    if-eqz v3, :cond_23

    .line 1
    iget-object v3, v0, Ll0/b;->n:Ll0/e;

    iget-boolean v4, v3, Ll0/e;->v:Z

    if-eqz v4, :cond_0

    goto/16 :goto_14

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ll0/b;->h()V

    iget-object v4, v0, Ll0/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, v0, Ll0/b;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_1

    iget-object v7, v0, Ll0/b;->s:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll0/b;

    iget-object v7, v7, Ll0/b;->u:Lg0/o;

    invoke-virtual {v7}, Lg0/o;->d()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ld0/c;->a()V

    .line 3
    iget-object v5, v0, Ll0/b;->u:Lg0/o;

    iget-object v7, v5, Lg0/o;->j:Lg0/a;

    if-nez v7, :cond_2

    const/16 v7, 0x64

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v7}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    move/from16 v8, p3

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    int-to-float v7, v7

    mul-float v8, v8, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v8, v7

    mul-float v8, v8, v9

    float-to-int v7, v8

    .line 5
    iget-object v8, v0, Ll0/b;->q:Ll0/b;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p0}, Ll0/b;->k()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Lg0/o;->d()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1, v4, v7}, Ll0/b;->j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Ld0/c;->a()V

    :cond_4
    :goto_3
    invoke-static {}, Ld0/c;->a()V

    invoke-virtual/range {p0 .. p0}, Ll0/b;->l()V

    return-void

    :cond_5
    iget-object v8, v0, Ll0/b;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v8, v4, v9}, Ll0/b;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 7
    iget-object v10, v0, Ll0/b;->q:Ll0/b;

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x3

    const/4 v12, 0x0

    if-nez v10, :cond_7

    goto :goto_5

    .line 8
    :cond_7
    iget v3, v3, Ll0/e;->u:I

    if-ne v3, v11, :cond_8

    goto :goto_5

    .line 9
    :cond_8
    iget-object v3, v0, Ll0/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Ll0/b;->q:Ll0/b;

    invoke-virtual {v10, v3, v2, v6}, Ll0/b;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    :cond_9
    :goto_5
    invoke-virtual {v5}, Lg0/o;->d()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 11
    iget-object v3, v0, Ll0/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p0 .. p0}, Ll0/b;->k()Z

    move-result v5

    iget-object v10, v0, Ll0/b;->a:Landroid/graphics/Path;

    const/4 v13, 0x2

    iget-object v14, v0, Ll0/b;->o:Lg0/g;

    if-nez v5, :cond_b

    :cond_a
    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 12
    :cond_b
    iget-object v5, v14, Lg0/g;->c:Ljava/lang/Object;

    .line 13
    check-cast v5, Ljava/util/List;

    .line 14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v5, :cond_f

    .line 15
    iget-object v12, v14, Lg0/g;->c:Ljava/lang/Object;

    .line 16
    check-cast v12, Ljava/util/List;

    .line 17
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk0/f;

    .line 18
    iget-object v9, v14, Lg0/g;->a:Ljava/lang/Object;

    .line 19
    check-cast v9, Ljava/util/List;

    .line 20
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg0/a;

    invoke-virtual {v9}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Path;

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 21
    iget v9, v12, Lk0/f;->a:I

    .line 22
    invoke-static {v9}, Lg/d;->c(I)I

    move-result v9

    if-eqz v9, :cond_c

    if-eq v9, v6, :cond_a

    if-eq v9, v13, :cond_c

    if-eq v9, v11, :cond_a

    goto :goto_8

    :cond_c
    iget-boolean v9, v12, Lk0/f;->d:Z

    if-eqz v9, :cond_d

    goto :goto_6

    :cond_d
    :goto_8
    iget-object v9, v0, Ll0/b;->k:Landroid/graphics/RectF;

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v12}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v15, :cond_e

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_9

    :cond_e
    iget v12, v3, Landroid/graphics/RectF;->left:F

    iget v11, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, v3, Landroid/graphics/RectF;->top:F

    iget v13, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v13, v3, Landroid/graphics/RectF;->right:F

    iget v6, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v13, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v3, v11, v12, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_9
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto :goto_7

    :cond_f
    invoke-virtual {v8, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v8, v3, v3, v5, v6}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_10
    invoke-static {}, Ld0/c;->a()V

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_22

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_22

    iget-object v3, v0, Ll0/b;->c:Le0/a;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v6, 0x1f

    .line 24
    invoke-static {v1, v8, v3, v6}, Lp0/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 25
    invoke-static {}, Ld0/c;->a()V

    invoke-virtual/range {p0 .. p1}, Ll0/b;->i(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v1, v4, v7}, Ll0/b;->j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Ld0/c;->a()V

    invoke-virtual/range {p0 .. p0}, Ll0/b;->k()Z

    move-result v9

    const/16 v11, 0x13

    if-eqz v9, :cond_1f

    .line 26
    iget-object v9, v0, Ll0/b;->d:Le0/a;

    invoke-static {v1, v8, v9, v11}, Lp0/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1c

    if-ge v12, v13, :cond_11

    invoke-virtual/range {p0 .. p1}, Ll0/b;->i(Landroid/graphics/Canvas;)V

    :cond_11
    invoke-static {}, Ld0/c;->a()V

    const/4 v12, 0x0

    .line 27
    :goto_b
    iget-object v13, v14, Lg0/g;->c:Ljava/lang/Object;

    .line 28
    check-cast v13, Ljava/util/List;

    .line 29
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1e

    .line 30
    iget-object v13, v14, Lg0/g;->c:Ljava/lang/Object;

    .line 31
    check-cast v13, Ljava/util/List;

    .line 32
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lk0/f;

    .line 33
    iget-object v15, v14, Lg0/g;->a:Ljava/lang/Object;

    .line 34
    check-cast v15, Ljava/util/List;

    .line 35
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg0/a;

    .line 36
    iget-object v11, v14, Lg0/g;->b:Ljava/io/Serializable;

    .line 37
    check-cast v11, Ljava/util/List;

    .line 38
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg0/a;

    .line 39
    iget v6, v13, Lk0/f;->a:I

    .line 40
    invoke-static {v6}, Lg/d;->c(I)I

    move-result v6

    iget-object v5, v0, Ll0/b;->e:Le0/a;

    const v16, 0x40233333    # 2.55f

    iget-boolean v13, v13, Lk0/f;->d:Z

    if-eqz v6, :cond_1c

    const/4 v2, 0x1

    if-eq v6, v2, :cond_19

    const/4 v2, 0x2

    if-eq v6, v2, :cond_16

    const/4 v2, 0x3

    if-eq v6, v2, :cond_12

    goto/16 :goto_f

    .line 41
    :cond_12
    iget-object v5, v14, Lg0/g;->a:Ljava/lang/Object;

    .line 42
    check-cast v5, Ljava/util/List;

    .line 43
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    :goto_c
    const/4 v5, 0x0

    goto :goto_e

    :cond_13
    const/4 v5, 0x0

    .line 44
    :goto_d
    iget-object v6, v14, Lg0/g;->c:Ljava/lang/Object;

    .line 45
    check-cast v6, Ljava/util/List;

    .line 46
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    .line 47
    iget-object v6, v14, Lg0/g;->c:Ljava/lang/Object;

    .line 48
    check-cast v6, Ljava/util/List;

    .line 49
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk0/f;

    .line 50
    iget v6, v6, Lk0/f;->a:I

    const/4 v11, 0x4

    if-eq v6, v11, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_15
    const/4 v5, 0x1

    :goto_e
    if-eqz v5, :cond_18

    const/16 v5, 0xff

    .line 51
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_f

    :cond_16
    const/4 v2, 0x3

    if-eqz v13, :cond_17

    const/16 v6, 0x1f

    .line 52
    invoke-static {v1, v8, v9, v6}, Lp0/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 53
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v11}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v16

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v15}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v10, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v10, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    :cond_17
    const/16 v5, 0x1f

    .line 54
    invoke-static {v1, v8, v9, v5}, Lp0/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 55
    invoke-virtual {v15}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    invoke-virtual {v10, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v11}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    :goto_f
    const/16 v6, 0xff

    :goto_10
    const/16 v13, 0x1f

    goto/16 :goto_12

    :cond_19
    const/4 v2, 0x3

    if-nez v12, :cond_1a

    const/high16 v6, -0x1000000

    .line 56
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v6, 0xff

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_11

    :cond_1a
    const/16 v6, 0xff

    :goto_11
    if-eqz v13, :cond_1b

    const/16 v13, 0x1f

    .line 57
    invoke-static {v1, v8, v5, v13}, Lp0/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 58
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v11}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v16

    float-to-int v11, v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v15}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v10, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_10

    .line 59
    :cond_1b
    invoke-virtual {v15}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Path;

    invoke-virtual {v10, v11}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v10, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_10

    :cond_1c
    const/4 v2, 0x3

    const/16 v6, 0xff

    if-eqz v13, :cond_1d

    const/16 v13, 0x1f

    .line 60
    invoke-static {v1, v8, v3, v13}, Lp0/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 61
    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v15}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Path;

    invoke-virtual {v10, v15}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v11}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v16

    float-to-int v11, v11

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v10, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    :cond_1d
    const/16 v13, 0x1f

    .line 62
    invoke-virtual {v15}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    invoke-virtual {v10, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v10, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v11}, Lg0/a;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_12
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    const/16 v5, 0xff

    const/16 v6, 0x1f

    const/16 v11, 0x13

    goto/16 :goto_b

    .line 63
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Ld0/c;->a()V

    .line 64
    :cond_1f
    iget-object v2, v0, Ll0/b;->q:Ll0/b;

    if-eqz v2, :cond_20

    const/4 v6, 0x1

    goto :goto_13

    :cond_20
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_21

    .line 65
    iget-object v2, v0, Ll0/b;->f:Le0/a;

    const/16 v3, 0x13

    invoke-static {v1, v8, v2, v3}, Lp0/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {}, Ld0/c;->a()V

    invoke-virtual/range {p0 .. p1}, Ll0/b;->i(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Ll0/b;->q:Ll0/b;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3, v7}, Ll0/b;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Ld0/c;->a()V

    invoke-static {}, Ld0/c;->a()V

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Ld0/c;->a()V

    :cond_22
    iget-boolean v2, v0, Ll0/b;->w:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Ll0/b;->x:Le0/a;

    if-eqz v2, :cond_4

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Ll0/b;->x:Le0/a;

    const v3, -0x3d7fd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Ll0/b;->x:Le0/a;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Ll0/b;->x:Le0/a;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, v0, Ll0/b;->x:Le0/a;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Ll0/b;->x:Le0/a;

    const v3, 0x50ebebeb

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Ll0/b;->x:Le0/a;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_23
    :goto_14
    invoke-static {}, Ld0/c;->a()V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/b;->n:Ll0/e;

    iget-object v0, v0, Ll0/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ll0/b;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ll0/b;->r:Ll0/b;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll0/b;->s:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/b;->s:Ljava/util/List;

    iget-object v0, p0, Ll0/b;->r:Ll0/b;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Ll0/b;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Ll0/b;->r:Ll0/b;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Ll0/b;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget-object v8, p0, Ll0/b;->g:Le0/a;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Ld0/c;->a()V

    return-void
.end method

.method public abstract j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/b;->o:Lg0/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lg0/g;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Ll0/b;->m:Ld0/l;

    .line 2
    .line 3
    iget-object v0, v0, Ld0/l;->b:Ld0/f;

    .line 4
    .line 5
    iget-object v0, v0, Ld0/f;->a:Ld0/u;

    .line 6
    .line 7
    iget-object v1, p0, Ll0/b;->n:Ll0/e;

    .line 8
    .line 9
    iget-object v1, v1, Ll0/e;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v2, v0, Ld0/u;->a:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v2, v0, Ld0/u;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lp0/e;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    new-instance v3, Lp0/e;

    .line 27
    .line 28
    invoke-direct {v3}, Lp0/e;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget v2, v3, Lp0/e;->a:I

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    iput v2, v3, Lp0/e;->a:I

    .line 39
    .line 40
    const v4, 0x7fffffff

    .line 41
    .line 42
    .line 43
    if-ne v2, v4, :cond_2

    .line 44
    .line 45
    div-int/lit8 v2, v2, 0x2

    .line 46
    .line 47
    iput v2, v3, Lp0/e;->a:I

    .line 48
    .line 49
    :cond_2
    const-string v2, "__container"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    iget-object v0, v0, Ld0/u;->b:Landroidx/collection/ArraySet;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ld0/u$a;

    .line 74
    .line 75
    invoke-interface {v1}, Ld0/u$a;->a()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    :goto_1
    return-void
.end method

.method public final m(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a<",
            "**>;)V"
        }
    .end annotation

    iget-object v0, p0, Ll0/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 0

    return-void
.end method

.method public o(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ll0/b;->x:Le0/a;

    if-nez v0, :cond_0

    new-instance v0, Le0/a;

    invoke-direct {v0}, Le0/a;-><init>()V

    iput-object v0, p0, Ll0/b;->x:Le0/a;

    :cond_0
    iput-boolean p1, p0, Ll0/b;->w:Z

    return-void
.end method

.method public p(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ll0/b;->u:Lg0/o;

    .line 2
    .line 3
    iget-object v1, v0, Lg0/o;->j:Lg0/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lg0/o;->m:Lg0/a;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v1, v0, Lg0/o;->n:Lg0/a;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object v1, v0, Lg0/o;->f:Lg0/a;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 29
    .line 30
    .line 31
    :cond_3
    iget-object v1, v0, Lg0/o;->g:Lg0/a;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 36
    .line 37
    .line 38
    :cond_4
    iget-object v1, v0, Lg0/o;->h:Lg0/a;

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 43
    .line 44
    .line 45
    :cond_5
    iget-object v1, v0, Lg0/o;->i:Lg0/a;

    .line 46
    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 50
    .line 51
    .line 52
    :cond_6
    iget-object v1, v0, Lg0/o;->k:Lg0/c;

    .line 53
    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 57
    .line 58
    .line 59
    :cond_7
    iget-object v0, v0, Lg0/o;->l:Lg0/c;

    .line 60
    .line 61
    if-eqz v0, :cond_8

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lg0/a;->j(F)V

    .line 64
    .line 65
    .line 66
    :cond_8
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Ll0/b;->o:Lg0/g;

    .line 68
    .line 69
    if-eqz v1, :cond_9

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    :goto_0
    iget-object v3, v1, Lg0/g;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v3, Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ge v2, v3, :cond_9

    .line 81
    .line 82
    iget-object v3, v1, Lg0/g;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v3, Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lg0/a;

    .line 91
    .line 92
    invoke-virtual {v3, p1}, Lg0/a;->j(F)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_9
    iget-object v1, p0, Ll0/b;->p:Lg0/c;

    .line 99
    .line 100
    if-eqz v1, :cond_a

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 103
    .line 104
    .line 105
    :cond_a
    iget-object v1, p0, Ll0/b;->q:Ll0/b;

    .line 106
    .line 107
    if-eqz v1, :cond_b

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ll0/b;->p(F)V

    .line 110
    .line 111
    .line 112
    :cond_b
    :goto_1
    iget-object v1, p0, Ll0/b;->t:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-ge v0, v2, :cond_c

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lg0/a;

    .line 125
    .line 126
    invoke-virtual {v1, p1}, Lg0/a;->j(F)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_c
    return-void
.end method
