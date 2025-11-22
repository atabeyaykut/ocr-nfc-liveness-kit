.class public final Lp/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/f;

.field public final b:Lu/l;

.field public final c:Lu/g;


# direct methods
.method public constructor <init>(Le/f;Lu/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp/m;->a:Le/f;

    .line 5
    .line 6
    iput-object p2, p0, Lp/m;->b:Lu/l;

    .line 7
    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 p2, 0x1a

    .line 11
    .line 12
    if-lt p1, p2, :cond_3

    .line 13
    .line 14
    sget-boolean v0, Lu/a;->a:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    if-eq p1, p2, :cond_2

    .line 20
    .line 21
    const/16 p2, 0x1b

    .line 22
    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Lu/i;

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-direct {p1, p2}, Lu/i;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_0
    new-instance p1, Lu/j;

    .line 34
    .line 35
    invoke-direct {p1}, Lu/j;-><init>()V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    sget-boolean p1, Lu/a;->a:Z

    .line 40
    .line 41
    :goto_1
    new-instance p1, Lu/i;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-direct {p1, p2}, Lu/i;-><init>(Z)V

    .line 45
    .line 46
    .line 47
    :goto_2
    iput-object p1, p0, Lp/m;->c:Lu/g;

    .line 48
    .line 49
    return-void
.end method

.method public static a(Lp/g;Landroid/graphics/Bitmap$Config;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroidx/camera/camera2/internal/compat/workaround/a;->e()Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    iget-boolean p1, p0, Lp/g;->q:Z

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    return v3

    .line 26
    :cond_2
    iget-object p0, p0, Lp/g;->c:Lr/a;

    .line 27
    .line 28
    instance-of p1, p0, Lr/b;

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    check-cast p0, Lr/b;

    .line 33
    .line 34
    invoke-interface {p0}, Lr/b;->d()Landroid/widget/ImageView;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_3

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 p0, 0x0

    .line 53
    :goto_1
    if-eqz p0, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    return v2
.end method


# virtual methods
.method public final b(Lp/g;Lq/e;)Lp/k;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    iget-object v2, v1, Lp/g;->l:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    sget-object v2, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    iget-object v6, v1, Lp/g;->g:Landroid/graphics/Bitmap$Config;

    .line 20
    .line 21
    invoke-static {v2, v6}, Lm9/k;->o0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 31
    :goto_1
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iget-object v2, v1, Lp/g;->g:Landroid/graphics/Bitmap$Config;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lp/m;->a(Lp/g;Landroid/graphics/Bitmap$Config;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, v0, Lp/m;->c:Lu/g;

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Lu/g;->a(Lq/e;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v2, 0x0

    .line 52
    :goto_2
    if-eqz v2, :cond_3

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    const/4 v2, 0x0

    .line 57
    :goto_3
    if-eqz v2, :cond_4

    .line 58
    .line 59
    iget-object v2, v1, Lp/g;->g:Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 63
    .line 64
    :goto_4
    move-object v6, v2

    .line 65
    iget-object v2, v0, Lp/m;->b:Lu/l;

    .line 66
    .line 67
    iget-boolean v2, v2, Lu/l;->d:Z

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    iget v2, v1, Lp/g;->v:I

    .line 72
    .line 73
    move/from16 v16, v2

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_5
    const/4 v2, 0x4

    .line 77
    const/16 v16, 0x4

    .line 78
    .line 79
    :goto_5
    iget-boolean v2, v1, Lp/g;->r:Z

    .line 80
    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    iget-object v2, v1, Lp/g;->l:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_6

    .line 90
    .line 91
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 92
    .line 93
    if-eq v6, v2, :cond_6

    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    goto :goto_6

    .line 97
    :cond_6
    const/4 v8, 0x0

    .line 98
    :goto_6
    iget-object v2, v5, Lq/e;->a:Lq/a;

    .line 99
    .line 100
    sget-object v3, Lq/a$b;->a:Lq/a$b;

    .line 101
    .line 102
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_8

    .line 107
    .line 108
    iget-object v2, v5, Lq/e;->b:Lq/a;

    .line 109
    .line 110
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_7

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_7
    iget v2, v1, Lp/g;->C:I

    .line 118
    .line 119
    move v7, v2

    .line 120
    goto :goto_8

    .line 121
    :cond_8
    :goto_7
    const/4 v2, 0x2

    .line 122
    const/4 v7, 0x2

    .line 123
    :goto_8
    new-instance v17, Lp/k;

    .line 124
    .line 125
    iget-object v2, v1, Lp/g;->a:Landroid/content/Context;

    .line 126
    .line 127
    iget-object v4, v1, Lp/g;->h:Landroid/graphics/ColorSpace;

    .line 128
    .line 129
    invoke-static/range {p1 .. p1}, Lu/b;->a(Lp/g;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    iget-boolean v10, v1, Lp/g;->s:Z

    .line 134
    .line 135
    iget-object v11, v1, Lp/g;->f:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v12, v1, Lp/g;->n:Lrc/q;

    .line 138
    .line 139
    iget-object v13, v1, Lp/g;->o:Lp/o;

    .line 140
    .line 141
    iget-object v14, v1, Lp/g;->D:Lp/l;

    .line 142
    .line 143
    iget v15, v1, Lp/g;->t:I

    .line 144
    .line 145
    iget v3, v1, Lp/g;->u:I

    .line 146
    .line 147
    move-object/from16 v1, v17

    .line 148
    .line 149
    move/from16 v18, v3

    .line 150
    .line 151
    move-object v3, v6

    .line 152
    move-object/from16 v5, p2

    .line 153
    .line 154
    move v6, v7

    .line 155
    move v7, v9

    .line 156
    move v9, v10

    .line 157
    move-object v10, v11

    .line 158
    move-object v11, v12

    .line 159
    move-object v12, v13

    .line 160
    move-object v13, v14

    .line 161
    move v14, v15

    .line 162
    move/from16 v15, v18

    .line 163
    .line 164
    invoke-direct/range {v1 .. v16}, Lp/k;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lq/e;IZZZLjava/lang/String;Lrc/q;Lp/o;Lp/l;III)V

    .line 165
    .line 166
    .line 167
    return-object v17
.end method
