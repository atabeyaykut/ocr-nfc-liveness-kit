.class public final Le/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f;


# instance fields
.field public final a:Lp/a;

.field public final b:Ll9/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/e<",
            "Ln/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/b$b;

.field public final d:Lkotlinx/coroutines/internal/f;

.field public final e:Lp/m;

.field public final f:Ll9/e;

.field public final g:Le/a;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp/a;Ll9/j;Ll9/j;Ll9/j;Le/a;Lu/h;)V
    .locals 7

    .line 1
    sget-object v0, Le/b$b;->b0:Landroidx/constraintlayout/core/state/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/h;->a:Lp/a;

    iput-object p3, p0, Le/h;->b:Ll9/e;

    iput-object v0, p0, Le/h;->c:Le/b$b;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/d0;->a()Lnc/u1;

    move-result-object p2

    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 3
    invoke-virtual {v0}, Lnc/k1;->d()Lnc/k1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnc/g1;->plus(Lp9/f;)Lp9/f;

    move-result-object p2

    new-instance v0, Le/k;

    invoke-direct {v0, p0}, Le/k;-><init>(Le/h;)V

    invoke-interface {p2, v0}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    move-result-object p2

    invoke-static {p2}, Lb8/f;->f(Lp9/f;)Lkotlinx/coroutines/internal/f;

    move-result-object p2

    iput-object p2, p0, Le/h;->d:Lkotlinx/coroutines/internal/f;

    new-instance p2, Lu/l;

    .line 4
    iget-boolean v0, p7, Lu/h;->b:Z

    .line 5
    invoke-direct {p2, p0, p1, v0}, Lu/l;-><init>(Le/h;Landroid/content/Context;Z)V

    new-instance p1, Lp/m;

    invoke-direct {p1, p0, p2}, Lp/m;-><init>(Le/f;Lu/l;)V

    iput-object p1, p0, Le/h;->e:Lp/m;

    iput-object p3, p0, Le/h;->f:Ll9/e;

    .line 6
    new-instance p2, Le/a$a;

    invoke-direct {p2, p6}, Le/a$a;-><init>(Le/a;)V

    .line 7
    new-instance p3, Lm/c;

    invoke-direct {p3}, Lm/c;-><init>()V

    const-class p6, Lrc/r;

    invoke-virtual {p2, p3, p6}, Le/a$a;->b(Lm/d;Ljava/lang/Class;)V

    new-instance p3, Lm/g;

    invoke-direct {p3}, Lm/g;-><init>()V

    const-class p6, Ljava/lang/String;

    invoke-virtual {p2, p3, p6}, Le/a$a;->b(Lm/d;Ljava/lang/Class;)V

    new-instance p3, Lm/b;

    invoke-direct {p3}, Lm/b;-><init>()V

    const-class p6, Landroid/net/Uri;

    invoke-virtual {p2, p3, p6}, Le/a$a;->b(Lm/d;Ljava/lang/Class;)V

    new-instance p3, Lm/f;

    invoke-direct {p3}, Lm/f;-><init>()V

    invoke-virtual {p2, p3, p6}, Le/a$a;->b(Lm/d;Ljava/lang/Class;)V

    new-instance p3, Lm/e;

    invoke-direct {p3}, Lm/e;-><init>()V

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, p3, v0}, Le/a$a;->b(Lm/d;Ljava/lang/Class;)V

    new-instance p3, Lm/a;

    invoke-direct {p3}, Lm/a;-><init>()V

    const-class v0, [B

    invoke-virtual {p2, p3, v0}, Le/a$a;->b(Lm/d;Ljava/lang/Class;)V

    new-instance p3, Ll/c;

    invoke-direct {p3}, Ll/c;-><init>()V

    .line 8
    iget-object v0, p2, Le/a$a;->c:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ll9/g;

    invoke-direct {v1, p3, p6}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p3, Ll/a;

    .line 12
    iget-boolean v1, p7, Lu/h;->a:Z

    .line 13
    invoke-direct {p3, v1}, Ll/a;-><init>(Z)V

    .line 14
    new-instance v1, Ll9/g;

    const-class v2, Ljava/io/File;

    invoke-direct {v1, p3, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p3, Lj/j$a;

    .line 17
    iget-boolean v1, p7, Lu/h;->c:Z

    .line 18
    invoke-direct {p3, p5, p4, v1}, Lj/j$a;-><init>(Ll9/j;Ll9/j;Z)V

    invoke-virtual {p2, p3, p6}, Le/a$a;->a(Lj/h$a;Ljava/lang/Class;)V

    new-instance p3, Lj/i$a;

    invoke-direct {p3}, Lj/i$a;-><init>()V

    invoke-virtual {p2, p3, v2}, Le/a$a;->a(Lj/h$a;Ljava/lang/Class;)V

    new-instance p3, Lj/a$a;

    invoke-direct {p3}, Lj/a$a;-><init>()V

    invoke-virtual {p2, p3, p6}, Le/a$a;->a(Lj/h$a;Ljava/lang/Class;)V

    new-instance p3, Lj/d$a;

    invoke-direct {p3}, Lj/d$a;-><init>()V

    invoke-virtual {p2, p3, p6}, Le/a$a;->a(Lj/h$a;Ljava/lang/Class;)V

    new-instance p3, Lj/k$a;

    invoke-direct {p3}, Lj/k$a;-><init>()V

    invoke-virtual {p2, p3, p6}, Le/a$a;->a(Lj/h$a;Ljava/lang/Class;)V

    new-instance p3, Lj/e$a;

    invoke-direct {p3}, Lj/e$a;-><init>()V

    const-class p4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p4}, Le/a$a;->a(Lj/h$a;Ljava/lang/Class;)V

    new-instance p3, Lj/b$a;

    invoke-direct {p3}, Lj/b$a;-><init>()V

    const-class p4, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3, p4}, Le/a$a;->a(Lj/h$a;Ljava/lang/Class;)V

    new-instance p3, Lj/c$a;

    invoke-direct {p3}, Lj/c$a;-><init>()V

    const-class p4, Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3, p4}, Le/a$a;->a(Lj/h$a;Ljava/lang/Class;)V

    new-instance p3, Lg/b$b;

    .line 19
    iget p4, p7, Lu/h;->d:I

    .line 20
    invoke-direct {p3, p4}, Lg/b$b;-><init>(I)V

    .line 21
    iget-object p4, p2, Le/a$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance p3, Le/a;

    iget-object p5, p2, Le/a$a;->a:Ljava/util/ArrayList;

    invoke-static {p5}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object p5

    iget-object p6, p2, Le/a$a;->b:Ljava/util/ArrayList;

    invoke-static {p6}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object p2, p2, Le/a$a;->d:Ljava/util/ArrayList;

    invoke-static {p2}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {p4}, Lc5/w;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v1, p3

    move-object v2, p5

    .line 23
    invoke-direct/range {v1 .. v6}, Le/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 24
    iput-object p3, p0, Le/h;->g:Le/a;

    check-cast p5, Ljava/util/Collection;

    new-instance p2, Lk/a;

    invoke-direct {p2, p0, p1}, Lk/a;-><init>(Le/f;Lp/m;)V

    invoke-static {p2, p5}, Lm9/t;->n1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Le/h;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method

.method public static final c(Le/h;Lp/g;Lp9/d;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    instance-of v3, v2, Le/i;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    move-object v3, v2

    .line 15
    check-cast v3, Le/i;

    .line 16
    .line 17
    iget v4, v3, Le/i;->h:I

    .line 18
    .line 19
    const/high16 v5, -0x80000000

    .line 20
    .line 21
    and-int v6, v4, v5

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sub-int/2addr v4, v5

    .line 26
    iput v4, v3, Le/i;->h:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Le/i;

    .line 30
    .line 31
    invoke-direct {v3, v1, v2}, Le/i;-><init>(Le/h;Lp9/d;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    move-object v8, v3

    .line 35
    iget-object v2, v8, Le/i;->f:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v9, Lq9/a;->a:Lq9/a;

    .line 38
    .line 39
    iget v3, v8, Le/i;->h:I

    .line 40
    .line 41
    const/4 v10, 0x3

    .line 42
    const/4 v11, 0x2

    .line 43
    const/4 v12, 0x1

    .line 44
    const/4 v13, 0x0

    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    if-eq v3, v12, :cond_3

    .line 48
    .line 49
    if-eq v3, v11, :cond_2

    .line 50
    .line 51
    if-ne v3, v10, :cond_1

    .line 52
    .line 53
    iget-object v1, v8, Le/i;->d:Le/b;

    .line 54
    .line 55
    iget-object v3, v8, Le/i;->c:Lp/g;

    .line 56
    .line 57
    iget-object v4, v8, Le/i;->b:Lcoil/request/RequestDelegate;

    .line 58
    .line 59
    iget-object v5, v8, Le/i;->a:Le/h;

    .line 60
    .line 61
    :try_start_0
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_a

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    iget-object v0, v8, Le/i;->e:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    iget-object v1, v8, Le/i;->d:Le/b;

    .line 77
    .line 78
    iget-object v3, v8, Le/i;->c:Lp/g;

    .line 79
    .line 80
    iget-object v4, v8, Le/i;->b:Lcoil/request/RequestDelegate;

    .line 81
    .line 82
    iget-object v5, v8, Le/i;->a:Le/h;

    .line 83
    .line 84
    :try_start_1
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    move-object/from16 v19, v0

    .line 88
    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_3
    iget-object v1, v8, Le/i;->d:Le/b;

    .line 92
    .line 93
    iget-object v3, v8, Le/i;->c:Lp/g;

    .line 94
    .line 95
    iget-object v4, v8, Le/i;->b:Lcoil/request/RequestDelegate;

    .line 96
    .line 97
    iget-object v5, v8, Le/i;->a:Le/h;

    .line 98
    .line 99
    :try_start_2
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    move-object v2, v1

    .line 103
    move-object v1, v5

    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :catchall_0
    move-exception v0

    .line 107
    goto/16 :goto_c

    .line 108
    .line 109
    :cond_4
    invoke-static {v2}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v8}, Lp9/d;->getContext()Lp9/f;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lx5/a;->k(Lp9/f;)Lnc/b1;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    iget-object v2, v1, Le/h;->e:Lp/m;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object v6, v0, Lp/g;->A:Landroidx/lifecycle/Lifecycle;

    .line 126
    .line 127
    iget-object v3, v0, Lp/g;->c:Lr/a;

    .line 128
    .line 129
    instance-of v4, v3, Lr/b;

    .line 130
    .line 131
    if-eqz v4, :cond_5

    .line 132
    .line 133
    new-instance v14, Lcoil/request/ViewTargetRequestDelegate;

    .line 134
    .line 135
    iget-object v4, v2, Lp/m;->a:Le/f;

    .line 136
    .line 137
    move-object v5, v3

    .line 138
    check-cast v5, Lr/b;

    .line 139
    .line 140
    move-object v2, v14

    .line 141
    move-object v3, v4

    .line 142
    move-object/from16 v4, p1

    .line 143
    .line 144
    invoke-direct/range {v2 .. v7}, Lcoil/request/ViewTargetRequestDelegate;-><init>(Le/f;Lp/g;Lr/b;Landroidx/lifecycle/Lifecycle;Lnc/b1;)V

    .line 145
    .line 146
    .line 147
    move-object v4, v14

    .line 148
    goto :goto_1

    .line 149
    :cond_5
    new-instance v2, Lcoil/request/BaseRequestDelegate;

    .line 150
    .line 151
    invoke-direct {v2, v6, v7}, Lcoil/request/BaseRequestDelegate;-><init>(Landroidx/lifecycle/Lifecycle;Lnc/b1;)V

    .line 152
    .line 153
    .line 154
    move-object v4, v2

    .line 155
    :goto_1
    invoke-virtual {v4}, Lcoil/request/RequestDelegate;->a()V

    .line 156
    .line 157
    .line 158
    new-instance v2, Lp/g$a;

    .line 159
    .line 160
    iget-object v3, v0, Lp/g;->a:Landroid/content/Context;

    .line 161
    .line 162
    invoke-direct {v2, v0, v3}, Lp/g$a;-><init>(Lp/g;Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, v1, Le/h;->a:Lp/a;

    .line 166
    .line 167
    iput-object v0, v2, Lp/g$a;->b:Lp/a;

    .line 168
    .line 169
    const/4 v0, 0x0

    .line 170
    iput v0, v2, Lp/g$a;->O:I

    .line 171
    .line 172
    invoke-virtual {v2}, Lp/g$a;->a()Lp/g;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iget-object v0, v1, Le/h;->c:Le/b$b;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    sget-object v2, Le/b;->a:Le/b$a;

    .line 182
    .line 183
    :try_start_3
    iget-object v0, v3, Lp/g;->b:Ljava/lang/Object;

    .line 184
    .line 185
    sget-object v5, Lp/i;->a:Lp/i;

    .line 186
    .line 187
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_12

    .line 192
    .line 193
    invoke-virtual {v4}, Lcoil/request/RequestDelegate;->c()V

    .line 194
    .line 195
    .line 196
    iget-object v0, v3, Lp/g;->A:Landroidx/lifecycle/Lifecycle;

    .line 197
    .line 198
    iput-object v1, v8, Le/i;->a:Le/h;

    .line 199
    .line 200
    iput-object v4, v8, Le/i;->b:Lcoil/request/RequestDelegate;

    .line 201
    .line 202
    iput-object v3, v8, Le/i;->c:Lp/g;

    .line 203
    .line 204
    iput-object v2, v8, Le/i;->d:Le/b;

    .line 205
    .line 206
    iput v12, v8, Le/i;->h:I

    .line 207
    .line 208
    invoke-static {v0, v8}, Lcoil/util/-Lifecycles;->a(Landroidx/lifecycle/Lifecycle;Lp9/d;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-ne v0, v9, :cond_6

    .line 213
    .line 214
    goto/16 :goto_f

    .line 215
    .line 216
    :cond_6
    :goto_2
    invoke-virtual {v1}, Le/h;->b()Ln/b;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-nez v0, :cond_7

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_7
    iget-object v5, v3, Lp/g;->E:Ln/b$a;

    .line 224
    .line 225
    if-nez v5, :cond_8

    .line 226
    .line 227
    move-object v0, v13

    .line 228
    goto :goto_3

    .line 229
    :cond_8
    invoke-interface {v0, v5}, Ln/b;->b(Ln/b$a;)Ln/b$b;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :goto_3
    if-nez v0, :cond_9

    .line 234
    .line 235
    :goto_4
    move-object v0, v13

    .line 236
    goto :goto_5

    .line 237
    :cond_9
    iget-object v0, v0, Ln/b$b;->a:Landroid/graphics/Bitmap;

    .line 238
    .line 239
    :goto_5
    if-nez v0, :cond_a

    .line 240
    .line 241
    move-object v6, v13

    .line 242
    goto :goto_6

    .line 243
    :cond_a
    iget-object v5, v3, Lp/g;->a:Landroid/content/Context;

    .line 244
    .line 245
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 250
    .line 251
    invoke-direct {v6, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 252
    .line 253
    .line 254
    :goto_6
    if-nez v6, :cond_b

    .line 255
    .line 256
    iget-object v5, v3, Lp/g;->M:Lp/a;

    .line 257
    .line 258
    iget-object v5, v5, Lp/a;->j:Landroid/graphics/drawable/Drawable;

    .line 259
    .line 260
    iget-object v6, v3, Lp/g;->G:Landroid/graphics/drawable/Drawable;

    .line 261
    .line 262
    iget-object v7, v3, Lp/g;->F:Ljava/lang/Integer;

    .line 263
    .line 264
    invoke-static {v3, v6, v7, v5}, Lu/b;->b(Lp/g;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    :cond_b
    iget-object v5, v3, Lp/g;->c:Lr/a;

    .line 269
    .line 270
    if-nez v5, :cond_c

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_c
    invoke-interface {v5, v6}, Lr/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 274
    .line 275
    .line 276
    :goto_7
    invoke-interface {v2}, Le/b;->onStart()V

    .line 277
    .line 278
    .line 279
    iget-object v5, v3, Lp/g;->d:Lp/g$b;

    .line 280
    .line 281
    if-nez v5, :cond_d

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_d
    invoke-interface {v5}, Lp/g$b;->onStart()V

    .line 285
    .line 286
    .line 287
    :goto_8
    invoke-interface {v2}, Le/b;->f()V

    .line 288
    .line 289
    .line 290
    iget-object v5, v3, Lp/g;->B:Lq/f;

    .line 291
    .line 292
    iput-object v1, v8, Le/i;->a:Le/h;

    .line 293
    .line 294
    iput-object v4, v8, Le/i;->b:Lcoil/request/RequestDelegate;

    .line 295
    .line 296
    iput-object v3, v8, Le/i;->c:Lp/g;

    .line 297
    .line 298
    iput-object v2, v8, Le/i;->d:Le/b;

    .line 299
    .line 300
    iput-object v0, v8, Le/i;->e:Landroid/graphics/Bitmap;

    .line 301
    .line 302
    iput v11, v8, Le/i;->h:I

    .line 303
    .line 304
    invoke-interface {v5, v8}, Lq/f;->b(Le/i;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    if-ne v5, v9, :cond_e

    .line 309
    .line 310
    goto/16 :goto_f

    .line 311
    .line 312
    :cond_e
    move-object/from16 v19, v0

    .line 313
    .line 314
    move-object/from16 v21, v5

    .line 315
    .line 316
    move-object v5, v1

    .line 317
    move-object v1, v2

    .line 318
    move-object/from16 v2, v21

    .line 319
    .line 320
    :goto_9
    :try_start_4
    move-object/from16 v17, v2

    .line 321
    .line 322
    check-cast v17, Lq/e;

    .line 323
    .line 324
    invoke-interface {v1}, Le/b;->m()V

    .line 325
    .line 326
    .line 327
    iget-object v0, v3, Lp/g;->w:Lnc/y;

    .line 328
    .line 329
    new-instance v2, Le/j;

    .line 330
    .line 331
    const/16 v20, 0x0

    .line 332
    .line 333
    move-object v14, v2

    .line 334
    move-object v15, v3

    .line 335
    move-object/from16 v16, v5

    .line 336
    .line 337
    move-object/from16 v18, v1

    .line 338
    .line 339
    invoke-direct/range {v14 .. v20}, Le/j;-><init>(Lp/g;Le/h;Lq/e;Le/b;Landroid/graphics/Bitmap;Lp9/d;)V

    .line 340
    .line 341
    .line 342
    iput-object v5, v8, Le/i;->a:Le/h;

    .line 343
    .line 344
    iput-object v4, v8, Le/i;->b:Lcoil/request/RequestDelegate;

    .line 345
    .line 346
    iput-object v3, v8, Le/i;->c:Lp/g;

    .line 347
    .line 348
    iput-object v1, v8, Le/i;->d:Le/b;

    .line 349
    .line 350
    iput-object v13, v8, Le/i;->e:Landroid/graphics/Bitmap;

    .line 351
    .line 352
    iput v10, v8, Le/i;->h:I

    .line 353
    .line 354
    invoke-static {v0, v2, v8}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    if-ne v2, v9, :cond_f

    .line 359
    .line 360
    goto/16 :goto_f

    .line 361
    .line 362
    :cond_f
    :goto_a
    move-object v9, v2

    .line 363
    check-cast v9, Lp/h;

    .line 364
    .line 365
    instance-of v0, v9, Lp/n;

    .line 366
    .line 367
    if-eqz v0, :cond_10

    .line 368
    .line 369
    move-object v0, v9

    .line 370
    check-cast v0, Lp/n;

    .line 371
    .line 372
    iget-object v2, v3, Lp/g;->c:Lr/a;

    .line 373
    .line 374
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-static {v0, v2, v1}, Le/h;->e(Lp/n;Lr/a;Le/b;)V

    .line 378
    .line 379
    .line 380
    goto :goto_b

    .line 381
    :cond_10
    instance-of v0, v9, Lp/d;

    .line 382
    .line 383
    if-eqz v0, :cond_11

    .line 384
    .line 385
    move-object v0, v9

    .line 386
    check-cast v0, Lp/d;

    .line 387
    .line 388
    iget-object v2, v3, Lp/g;->c:Lr/a;

    .line 389
    .line 390
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    invoke-static {v0, v2, v1}, Le/h;->d(Lp/d;Lr/a;Le/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    .line 395
    .line 396
    :cond_11
    :goto_b
    invoke-virtual {v4}, Lcoil/request/RequestDelegate;->b()V

    .line 397
    .line 398
    .line 399
    goto :goto_f

    .line 400
    :goto_c
    move-object v2, v1

    .line 401
    move-object v1, v5

    .line 402
    goto :goto_d

    .line 403
    :catchall_1
    move-exception v0

    .line 404
    goto :goto_d

    .line 405
    :cond_12
    :try_start_5
    new-instance v0, Lp/j;

    .line 406
    .line 407
    invoke-direct {v0}, Lp/j;-><init>()V

    .line 408
    .line 409
    .line 410
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 411
    :goto_d
    :try_start_6
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    .line 412
    .line 413
    if-eqz v5, :cond_14

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-interface {v2}, Le/b;->onCancel()V

    .line 419
    .line 420
    .line 421
    iget-object v1, v3, Lp/g;->d:Lp/g$b;

    .line 422
    .line 423
    if-nez v1, :cond_13

    .line 424
    .line 425
    goto :goto_e

    .line 426
    :cond_13
    invoke-interface {v1}, Lp/g$b;->onCancel()V

    .line 427
    .line 428
    .line 429
    :goto_e
    throw v0

    .line 430
    :cond_14
    iget-object v1, v1, Le/h;->e:Lp/m;

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    new-instance v9, Lp/d;

    .line 436
    .line 437
    instance-of v1, v0, Lp/j;

    .line 438
    .line 439
    if-eqz v1, :cond_15

    .line 440
    .line 441
    iget-object v1, v3, Lp/g;->M:Lp/a;

    .line 442
    .line 443
    iget-object v1, v1, Lp/a;->l:Landroid/graphics/drawable/Drawable;

    .line 444
    .line 445
    iget-object v5, v3, Lp/g;->K:Landroid/graphics/drawable/Drawable;

    .line 446
    .line 447
    iget-object v6, v3, Lp/g;->J:Ljava/lang/Integer;

    .line 448
    .line 449
    invoke-static {v3, v5, v6, v1}, Lu/b;->b(Lp/g;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    if-nez v1, :cond_16

    .line 454
    .line 455
    :cond_15
    invoke-virtual {v3}, Lp/g;->a()Landroid/graphics/drawable/Drawable;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    :cond_16
    invoke-direct {v9, v1, v3, v0}, Lp/d;-><init>(Landroid/graphics/drawable/Drawable;Lp/g;Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    iget-object v0, v3, Lp/g;->c:Lr/a;

    .line 463
    .line 464
    invoke-static {v9, v0, v2}, Le/h;->d(Lp/d;Lr/a;Le/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 465
    .line 466
    .line 467
    goto :goto_b

    .line 468
    :goto_f
    return-object v9

    .line 469
    :catchall_2
    move-exception v0

    .line 470
    invoke-virtual {v4}, Lcoil/request/RequestDelegate;->b()V

    .line 471
    .line 472
    .line 473
    throw v0
.end method

.method public static d(Lp/d;Lr/a;Le/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp/d;->b:Lp/g;

    .line 2
    .line 3
    instance-of v1, p1, Lt/d;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lp/g;->m:Lt/c$a;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Lt/d;

    .line 14
    .line 15
    invoke-interface {v1, v2, p0}, Lt/c$a;->a(Lt/d;Lp/h;)Lt/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v1, Lt/b;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-object p0, p0, Lp/d;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-interface {p1, p0}, Lr/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p2}, Le/b;->d()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lt/c;->a()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Le/b;->o()V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {p2}, Le/b;->a()V

    .line 39
    .line 40
    .line 41
    iget-object p0, v0, Lp/g;->d:Lp/g$b;

    .line 42
    .line 43
    if-nez p0, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-interface {p0}, Lp/g$b;->a()V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public static e(Lp/n;Lr/a;Le/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp/n;->b:Lp/g;

    .line 2
    .line 3
    instance-of v1, p1, Lt/d;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lp/g;->m:Lt/c$a;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Lt/d;

    .line 14
    .line 15
    invoke-interface {v1, v2, p0}, Lt/c$a;->a(Lt/d;Lp/h;)Lt/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v1, Lt/b;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-object p0, p0, Lp/n;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-interface {p1, p0}, Lr/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p2}, Le/b;->d()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lt/c;->a()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Le/b;->o()V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {p2}, Le/b;->onSuccess()V

    .line 39
    .line 40
    .line 41
    iget-object p0, v0, Lp/g;->d:Lp/g$b;

    .line 42
    .line 43
    if-nez p0, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-interface {p0}, Lp/g$b;->onSuccess()V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Lp/g;)Lp/c;
    .locals 5

    .line 1
    iget-object v0, p0, Le/h;->d:Lkotlinx/coroutines/internal/f;

    .line 2
    .line 3
    new-instance v1, Le/h$a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Le/h$a;-><init>(Le/h;Lp/g;Lp9/d;)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    invoke-static {v0, v2, v1, v3}, Lc5/v;->n(Lnc/a0;Lkotlinx/coroutines/scheduling/b;Lx9/p;I)Lnc/f0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p1, p1, Lp/g;->c:Lr/a;

    .line 15
    .line 16
    instance-of v1, p1, Lr/b;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    check-cast p1, Lr/b;

    .line 21
    .line 22
    invoke-interface {p1}, Lr/b;->d()Landroid/widget/ImageView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lu/c;->c(Landroid/view/View;)Lp/q;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    monitor-enter p1

    .line 31
    :try_start_0
    iget-object v1, p1, Lp/q;->a:La0/b;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    iget-boolean v3, p1, Lp/q;->d:Z

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p1, Lp/q;->d:Z

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    iget-object v1, p1, Lp/q;->b:Lnc/t1;

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v1, v2}, Lnc/g1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iput-object v2, p1, Lp/q;->b:Lnc/t1;

    .line 69
    .line 70
    new-instance v1, La0/b;

    .line 71
    .line 72
    invoke-direct {v1, v0}, La0/b;-><init>(Lnc/f0;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p1, Lp/q;->a:La0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    :goto_1
    monitor-exit p1

    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p1

    .line 81
    throw v0

    .line 82
    :cond_2
    new-instance v1, Lb8/f;

    .line 83
    .line 84
    invoke-direct {v1, v0}, Lb8/f;-><init>(Lnc/f0;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-object v1
.end method

.method public final b()Ln/b;
    .locals 1

    iget-object v0, p0, Le/h;->f:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/b;

    return-object v0
.end method

.method public final getComponents()Le/a;
    .locals 1

    iget-object v0, p0, Le/h;->g:Le/a;

    return-object v0
.end method
