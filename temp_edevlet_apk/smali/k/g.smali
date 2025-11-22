.class public final Lk/g;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Lk/a$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "coil.intercept.EngineInterceptor$transform$3"
    f = "EngineInterceptor.kt"
    l = {
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Lp/k;

.field public c:I

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lk/a;

.field public final synthetic h:Lk/a$a;

.field public final synthetic j:Lp/k;

.field public final synthetic k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls/b;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic l:Le/b;

.field public final synthetic m:Lp/g;


# direct methods
.method public constructor <init>(Lk/a;Lk/a$a;Lp/k;Ljava/util/List;Le/b;Lp/g;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a;",
            "Lk/a$a;",
            "Lp/k;",
            "Ljava/util/List<",
            "+",
            "Ls/b;",
            ">;",
            "Le/b;",
            "Lp/g;",
            "Lp9/d<",
            "-",
            "Lk/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk/g;->g:Lk/a;

    iput-object p2, p0, Lk/g;->h:Lk/a$a;

    iput-object p3, p0, Lk/g;->j:Lp/k;

    iput-object p4, p0, Lk/g;->k:Ljava/util/List;

    iput-object p5, p0, Lk/g;->l:Le/b;

    iput-object p6, p0, Lk/g;->m:Lp/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance v8, Lk/g;

    iget-object v1, p0, Lk/g;->g:Lk/a;

    iget-object v2, p0, Lk/g;->h:Lk/a$a;

    iget-object v3, p0, Lk/g;->j:Lp/k;

    iget-object v4, p0, Lk/g;->k:Ljava/util/List;

    iget-object v5, p0, Lk/g;->l:Le/b;

    iget-object v6, p0, Lk/g;->m:Lp/g;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lk/g;-><init>(Lk/a;Lk/a$a;Lp/k;Ljava/util/List;Le/b;Lp/g;Lp9/d;)V

    iput-object p1, v8, Lk/g;->f:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lk/g;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lk/g;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lk/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lk/g;->e:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lk/g;->d:I

    .line 11
    .line 12
    iget v3, p0, Lk/g;->c:I

    .line 13
    .line 14
    iget-object v4, p0, Lk/g;->b:Lp/k;

    .line 15
    .line 16
    iget-object v5, p0, Lk/g;->a:Ljava/util/List;

    .line 17
    .line 18
    check-cast v5, Ljava/util/List;

    .line 19
    .line 20
    iget-object v6, p0, Lk/g;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v6, Lnc/a0;

    .line 23
    .line 24
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v7, p0

    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lk/g;->f:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lnc/a0;

    .line 44
    .line 45
    iget-object v1, p0, Lk/g;->h:Lk/a$a;

    .line 46
    .line 47
    iget-object v1, v1, Lk/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    iget-object v3, p0, Lk/g;->g:Lk/a;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    .line 56
    iget-object v4, p0, Lk/g;->j:Lp/k;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    move-object v3, v1

    .line 61
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 74
    .line 75
    :cond_2
    sget-object v6, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 76
    .line 77
    invoke-static {v6, v5}, Lm9/k;->o0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object v3, v4, Lp/k;->b:Landroid/graphics/Bitmap$Config;

    .line 85
    .line 86
    iget v5, v4, Lp/k;->e:I

    .line 87
    .line 88
    iget-boolean v6, v4, Lp/k;->f:Z

    .line 89
    .line 90
    iget-object v7, v4, Lp/k;->d:Lq/e;

    .line 91
    .line 92
    invoke-static {v1, v3, v7, v5, v6}, Lu/e;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lq/e;IZ)Landroid/graphics/Bitmap;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :goto_0
    iget-object v1, p0, Lk/g;->l:Le/b;

    .line 97
    .line 98
    invoke-interface {v1}, Le/b;->n()V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lk/g;->k:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v7, p0

    .line 109
    move v11, v5

    .line 110
    move-object v5, v1

    .line 111
    move v1, v11

    .line 112
    :goto_1
    if-ge v6, v1, :cond_5

    .line 113
    .line 114
    add-int/lit8 v8, v6, 0x1

    .line 115
    .line 116
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Ls/b;

    .line 121
    .line 122
    iget-object v9, v4, Lp/k;->d:Lq/e;

    .line 123
    .line 124
    iput-object p1, v7, Lk/g;->f:Ljava/lang/Object;

    .line 125
    .line 126
    move-object v10, v5

    .line 127
    check-cast v10, Ljava/util/List;

    .line 128
    .line 129
    iput-object v10, v7, Lk/g;->a:Ljava/util/List;

    .line 130
    .line 131
    iput-object v4, v7, Lk/g;->b:Lp/k;

    .line 132
    .line 133
    iput v8, v7, Lk/g;->c:I

    .line 134
    .line 135
    iput v1, v7, Lk/g;->d:I

    .line 136
    .line 137
    iput v2, v7, Lk/g;->e:I

    .line 138
    .line 139
    invoke-interface {v6, v3, v9}, Ls/b;->a(Landroid/graphics/Bitmap;Lq/e;)Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-ne v3, v0, :cond_4

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_4
    move-object v6, p1

    .line 147
    move-object p1, v3

    .line 148
    move v3, v8

    .line 149
    :goto_2
    check-cast p1, Landroid/graphics/Bitmap;

    .line 150
    .line 151
    invoke-interface {v6}, Lnc/a0;->getCoroutineContext()Lp9/f;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-static {v8}, Lx5/a;->h(Lp9/f;)V

    .line 156
    .line 157
    .line 158
    move v11, v3

    .line 159
    move-object v3, p1

    .line 160
    move-object p1, v6

    .line 161
    move v6, v11

    .line 162
    goto :goto_1

    .line 163
    :cond_5
    iget-object p1, v7, Lk/g;->l:Le/b;

    .line 164
    .line 165
    invoke-interface {p1}, Le/b;->j()V

    .line 166
    .line 167
    .line 168
    iget-object p1, v7, Lk/g;->m:Lp/g;

    .line 169
    .line 170
    iget-object p1, p1, Lp/g;->a:Landroid/content/Context;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 177
    .line 178
    invoke-direct {v0, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, v7, Lk/g;->h:Lk/a$a;

    .line 182
    .line 183
    iget-boolean v1, p1, Lk/a$a;->b:Z

    .line 184
    .line 185
    new-instance v2, Lk/a$a;

    .line 186
    .line 187
    iget v3, p1, Lk/a$a;->c:I

    .line 188
    .line 189
    iget-object p1, p1, Lk/a$a;->d:Ljava/lang/String;

    .line 190
    .line 191
    invoke-direct {v2, v0, v1, v3, p1}, Lk/a$a;-><init>(Landroid/graphics/drawable/Drawable;ZILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-object v2
.end method
