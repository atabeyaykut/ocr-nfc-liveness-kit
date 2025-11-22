.class public final Lk/f;
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
        "Lp/n;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "coil.intercept.EngineInterceptor$intercept$2"
    f = "EngineInterceptor.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lk/a;

.field public final synthetic c:Lp/g;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lp/k;

.field public final synthetic f:Le/b;

.field public final synthetic g:Ln/b$a;

.field public final synthetic h:Lk/h$a;


# direct methods
.method public constructor <init>(Lk/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Ln/b$a;Lk/h$a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a;",
            "Lp/g;",
            "Ljava/lang/Object;",
            "Lp/k;",
            "Le/b;",
            "Ln/b$a;",
            "Lk/h$a;",
            "Lp9/d<",
            "-",
            "Lk/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk/f;->b:Lk/a;

    iput-object p2, p0, Lk/f;->c:Lp/g;

    iput-object p3, p0, Lk/f;->d:Ljava/lang/Object;

    iput-object p4, p0, Lk/f;->e:Lp/k;

    iput-object p5, p0, Lk/f;->f:Le/b;

    iput-object p6, p0, Lk/f;->g:Ln/b$a;

    iput-object p7, p0, Lk/f;->h:Lk/h$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lr9/i;-><init>(ILp9/d;)V

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

    new-instance p1, Lk/f;

    iget-object v1, p0, Lk/f;->b:Lk/a;

    iget-object v2, p0, Lk/f;->c:Lp/g;

    iget-object v3, p0, Lk/f;->d:Ljava/lang/Object;

    iget-object v4, p0, Lk/f;->e:Lp/k;

    iget-object v5, p0, Lk/f;->f:Le/b;

    iget-object v6, p0, Lk/f;->g:Ln/b$a;

    iget-object v7, p0, Lk/f;->h:Lk/h$a;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lk/f;-><init>(Lk/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Ln/b$a;Lk/h$a;Lp9/d;)V

    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lk/f;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lk/f;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lk/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lk/f;->a:I

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
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lk/f;->b:Lk/a;

    .line 26
    .line 27
    iget-object v4, p0, Lk/f;->c:Lp/g;

    .line 28
    .line 29
    iget-object v5, p0, Lk/f;->d:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v6, p0, Lk/f;->e:Lp/k;

    .line 32
    .line 33
    iget-object v7, p0, Lk/f;->f:Le/b;

    .line 34
    .line 35
    iput v2, p0, Lk/f;->a:I

    .line 36
    .line 37
    move-object v8, p0

    .line 38
    invoke-static/range {v3 .. v8}, Lk/a;->c(Lk/a;Lp/g;Ljava/lang/Object;Lp/k;Le/b;Lp9/d;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    :goto_0
    check-cast p1, Lk/a$a;

    .line 46
    .line 47
    iget-object v0, p0, Lk/f;->b:Lk/a;

    .line 48
    .line 49
    iget-object v0, v0, Lk/a;->c:Ln/c;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lk/f;->c:Lp/g;

    .line 55
    .line 56
    iget v1, v1, Lp/g;->t:I

    .line 57
    .line 58
    invoke-static {v1}, Landroidx/camera/core/impl/utils/f;->e(I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    iget-object v5, p0, Lk/f;->g:Ln/b$a;

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_3
    iget-object v0, v0, Ln/c;->a:Le/f;

    .line 70
    .line 71
    invoke-interface {v0}, Le/f;->b()Ln/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_9

    .line 76
    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    iget-object v1, p1, Lk/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    instance-of v6, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 83
    .line 84
    if-eqz v6, :cond_5

    .line 85
    .line 86
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    move-object v1, v4

    .line 90
    :goto_1
    if-nez v1, :cond_6

    .line 91
    .line 92
    move-object v1, v4

    .line 93
    goto :goto_2

    .line 94
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :goto_2
    if-nez v1, :cond_7

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_7
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-boolean v7, p1, Lk/a$a;->b:Z

    .line 107
    .line 108
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    const-string v8, "coil#is_sampled"

    .line 113
    .line 114
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object v7, p1, Lk/a$a;->d:Ljava/lang/String;

    .line 118
    .line 119
    if-nez v7, :cond_8

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_8
    const-string v8, "coil#disk_cache_key"

    .line 123
    .line 124
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :goto_3
    new-instance v7, Ln/b$b;

    .line 128
    .line 129
    invoke-direct {v7, v1, v6}, Ln/b$b;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v5, v7}, Ln/b;->c(Ln/b$a;Ln/b$b;)V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x1

    .line 136
    goto :goto_5

    .line 137
    :cond_9
    :goto_4
    const/4 v0, 0x0

    .line 138
    :goto_5
    iget-object v7, p1, Lk/a$a;->a:Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    iget-object v8, p0, Lk/f;->c:Lp/g;

    .line 141
    .line 142
    iget v9, p1, Lk/a$a;->c:I

    .line 143
    .line 144
    if-eqz v0, :cond_a

    .line 145
    .line 146
    move-object v10, v5

    .line 147
    goto :goto_6

    .line 148
    :cond_a
    move-object v10, v4

    .line 149
    :goto_6
    iget-object v11, p1, Lk/a$a;->d:Ljava/lang/String;

    .line 150
    .line 151
    iget-boolean v12, p1, Lk/a$a;->b:Z

    .line 152
    .line 153
    sget-object p1, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 154
    .line 155
    iget-object p1, p0, Lk/f;->h:Lk/h$a;

    .line 156
    .line 157
    instance-of v0, p1, Lk/i;

    .line 158
    .line 159
    if-eqz v0, :cond_b

    .line 160
    .line 161
    check-cast p1, Lk/i;

    .line 162
    .line 163
    iget-boolean p1, p1, Lk/i;->g:Z

    .line 164
    .line 165
    if-eqz p1, :cond_b

    .line 166
    .line 167
    const/4 v13, 0x1

    .line 168
    goto :goto_7

    .line 169
    :cond_b
    const/4 v13, 0x0

    .line 170
    :goto_7
    new-instance p1, Lp/n;

    .line 171
    .line 172
    move-object v6, p1

    .line 173
    invoke-direct/range {v6 .. v13}, Lp/n;-><init>(Landroid/graphics/drawable/Drawable;Lp/g;ILn/b$a;Ljava/lang/String;ZZ)V

    .line 174
    .line 175
    .line 176
    return-object p1
.end method
