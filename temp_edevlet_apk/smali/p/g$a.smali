.class public final Lp/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final A:Lnc/y;

.field public final B:Lp/l$a;

.field public final C:Ln/b$a;

.field public D:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public E:Landroid/graphics/drawable/Drawable;

.field public F:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public G:Landroid/graphics/drawable/Drawable;

.field public final H:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public final I:Landroid/graphics/drawable/Drawable;

.field public final J:Landroidx/lifecycle/Lifecycle;

.field public final K:Lq/f;

.field public final L:I

.field public M:Landroidx/lifecycle/Lifecycle;

.field public N:Lq/f;

.field public O:I

.field public final a:Landroid/content/Context;

.field public b:Lp/a;

.field public c:Ljava/lang/Object;

.field public d:Lr/a;

.field public final e:Lp/g$b;

.field public final f:Ln/b$a;

.field public final g:Ljava/lang/String;

.field public h:Landroid/graphics/Bitmap$Config;

.field public final i:Landroid/graphics/ColorSpace;

.field public final j:I

.field public final k:Ll9/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/g<",
            "+",
            "Lj/h$a<",
            "*>;+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final l:Lg/g$a;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ls/b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lt/c$a;

.field public final o:Lrc/q$a;

.field public final p:Ljava/util/LinkedHashMap;

.field public final q:Z

.field public r:Ljava/lang/Boolean;

.field public final s:Ljava/lang/Boolean;

.field public final t:Z

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:Lnc/y;

.field public final y:Lnc/y;

.field public final z:Lnc/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/g$a;->a:Landroid/content/Context;

    .line 1
    sget-object p1, Lu/b;->a:Lp/a;

    .line 2
    iput-object p1, p0, Lp/g$a;->b:Lp/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lp/g$a;->c:Ljava/lang/Object;

    iput-object p1, p0, Lp/g$a;->d:Lr/a;

    iput-object p1, p0, Lp/g$a;->e:Lp/g$b;

    iput-object p1, p0, Lp/g$a;->f:Ln/b$a;

    iput-object p1, p0, Lp/g$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lp/g$a;->i:Landroid/graphics/ColorSpace;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lp/g$a;->j:I

    iput-object p1, p0, Lp/g$a;->k:Ll9/g;

    iput-object p1, p0, Lp/g$a;->l:Lg/g$a;

    sget-object v1, Lm9/v;->a:Lm9/v;

    iput-object v1, p0, Lp/g$a;->m:Ljava/util/List;

    iput-object p1, p0, Lp/g$a;->n:Lt/c$a;

    iput-object p1, p0, Lp/g$a;->o:Lrc/q$a;

    iput-object p1, p0, Lp/g$a;->p:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lp/g$a;->q:Z

    iput-object p1, p0, Lp/g$a;->r:Ljava/lang/Boolean;

    iput-object p1, p0, Lp/g$a;->s:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lp/g$a;->t:Z

    iput v0, p0, Lp/g$a;->u:I

    iput v0, p0, Lp/g$a;->v:I

    iput v0, p0, Lp/g$a;->w:I

    iput-object p1, p0, Lp/g$a;->x:Lnc/y;

    iput-object p1, p0, Lp/g$a;->y:Lnc/y;

    iput-object p1, p0, Lp/g$a;->z:Lnc/y;

    iput-object p1, p0, Lp/g$a;->A:Lnc/y;

    iput-object p1, p0, Lp/g$a;->B:Lp/l$a;

    iput-object p1, p0, Lp/g$a;->C:Ln/b$a;

    iput-object p1, p0, Lp/g$a;->D:Ljava/lang/Integer;

    iput-object p1, p0, Lp/g$a;->E:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lp/g$a;->F:Ljava/lang/Integer;

    iput-object p1, p0, Lp/g$a;->G:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lp/g$a;->H:Ljava/lang/Integer;

    iput-object p1, p0, Lp/g$a;->I:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lp/g$a;->J:Landroidx/lifecycle/Lifecycle;

    iput-object p1, p0, Lp/g$a;->K:Lq/f;

    iput v0, p0, Lp/g$a;->L:I

    iput-object p1, p0, Lp/g$a;->M:Landroidx/lifecycle/Lifecycle;

    iput-object p1, p0, Lp/g$a;->N:Lq/f;

    iput v0, p0, Lp/g$a;->O:I

    return-void
.end method

.method public constructor <init>(Lp/g;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp/g$a;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p1, Lp/g;->M:Lp/a;

    .line 4
    iput-object v0, p0, Lp/g$a;->b:Lp/a;

    iget-object v0, p1, Lp/g;->b:Ljava/lang/Object;

    iput-object v0, p0, Lp/g$a;->c:Ljava/lang/Object;

    iget-object v0, p1, Lp/g;->c:Lr/a;

    iput-object v0, p0, Lp/g$a;->d:Lr/a;

    iget-object v0, p1, Lp/g;->d:Lp/g$b;

    iput-object v0, p0, Lp/g$a;->e:Lp/g$b;

    iget-object v0, p1, Lp/g;->e:Ln/b$a;

    iput-object v0, p0, Lp/g$a;->f:Ln/b$a;

    iget-object v0, p1, Lp/g;->f:Ljava/lang/String;

    iput-object v0, p0, Lp/g$a;->g:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lp/g;->L:Lp/b;

    iget-object v1, v0, Lp/b;->j:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-object v1, p0, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p1, Lp/g;->h:Landroid/graphics/ColorSpace;

    iput-object v1, p0, Lp/g$a;->i:Landroid/graphics/ColorSpace;

    .line 7
    :cond_0
    iget v1, v0, Lp/b;->i:I

    .line 8
    iput v1, p0, Lp/g$a;->j:I

    iget-object v1, p1, Lp/g;->j:Ll9/g;

    iput-object v1, p0, Lp/g$a;->k:Ll9/g;

    iget-object v1, p1, Lp/g;->k:Lg/g$a;

    iput-object v1, p0, Lp/g$a;->l:Lg/g$a;

    iget-object v1, p1, Lp/g;->l:Ljava/util/List;

    iput-object v1, p0, Lp/g$a;->m:Ljava/util/List;

    .line 9
    iget-object v1, v0, Lp/b;->h:Lt/c$a;

    .line 10
    iput-object v1, p0, Lp/g$a;->n:Lt/c$a;

    iget-object v1, p1, Lp/g;->n:Lrc/q;

    invoke-virtual {v1}, Lrc/q;->u()Lrc/q$a;

    move-result-object v1

    iput-object v1, p0, Lp/g$a;->o:Lrc/q$a;

    .line 11
    iget-object v1, p1, Lp/g;->o:Lp/o;

    iget-object v1, v1, Lp/o;->a:Ljava/util/Map;

    .line 12
    invoke-static {v1}, Lm9/e0;->V0(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lp/g$a;->p:Ljava/util/LinkedHashMap;

    iget-boolean v1, p1, Lp/g;->p:Z

    iput-boolean v1, p0, Lp/g$a;->q:Z

    .line 13
    iget-object v1, v0, Lp/b;->k:Ljava/lang/Boolean;

    .line 14
    iput-object v1, p0, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 15
    iget-object v1, v0, Lp/b;->l:Ljava/lang/Boolean;

    .line 16
    iput-object v1, p0, Lp/g$a;->s:Ljava/lang/Boolean;

    iget-boolean v1, p1, Lp/g;->s:Z

    iput-boolean v1, p0, Lp/g$a;->t:Z

    .line 17
    iget v1, v0, Lp/b;->m:I

    .line 18
    iput v1, p0, Lp/g$a;->u:I

    .line 19
    iget v1, v0, Lp/b;->n:I

    .line 20
    iput v1, p0, Lp/g$a;->v:I

    .line 21
    iget v1, v0, Lp/b;->o:I

    .line 22
    iput v1, p0, Lp/g$a;->w:I

    .line 23
    iget-object v1, v0, Lp/b;->d:Lnc/y;

    .line 24
    iput-object v1, p0, Lp/g$a;->x:Lnc/y;

    .line 25
    iget-object v1, v0, Lp/b;->e:Lnc/y;

    .line 26
    iput-object v1, p0, Lp/g$a;->y:Lnc/y;

    .line 27
    iget-object v1, v0, Lp/b;->f:Lnc/y;

    .line 28
    iput-object v1, p0, Lp/g$a;->z:Lnc/y;

    .line 29
    iget-object v1, v0, Lp/b;->g:Lnc/y;

    .line 30
    iput-object v1, p0, Lp/g$a;->A:Lnc/y;

    iget-object v1, p1, Lp/g;->D:Lp/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v2, Lp/l$a;

    invoke-direct {v2, v1}, Lp/l$a;-><init>(Lp/l;)V

    .line 32
    iput-object v2, p0, Lp/g$a;->B:Lp/l$a;

    iget-object v1, p1, Lp/g;->E:Ln/b$a;

    iput-object v1, p0, Lp/g$a;->C:Ln/b$a;

    iget-object v1, p1, Lp/g;->F:Ljava/lang/Integer;

    iput-object v1, p0, Lp/g$a;->D:Ljava/lang/Integer;

    iget-object v1, p1, Lp/g;->G:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lp/g$a;->E:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lp/g;->H:Ljava/lang/Integer;

    iput-object v1, p0, Lp/g$a;->F:Ljava/lang/Integer;

    iget-object v1, p1, Lp/g;->I:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lp/g$a;->G:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lp/g;->J:Ljava/lang/Integer;

    iput-object v1, p0, Lp/g$a;->H:Ljava/lang/Integer;

    iget-object v1, p1, Lp/g;->K:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lp/g$a;->I:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v1, v0, Lp/b;->a:Landroidx/lifecycle/Lifecycle;

    .line 34
    iput-object v1, p0, Lp/g$a;->J:Landroidx/lifecycle/Lifecycle;

    .line 35
    iget-object v1, v0, Lp/b;->b:Lq/f;

    .line 36
    iput-object v1, p0, Lp/g$a;->K:Lq/f;

    .line 37
    iget v0, v0, Lp/b;->c:I

    .line 38
    iput v0, p0, Lp/g$a;->L:I

    iget-object v0, p1, Lp/g;->a:Landroid/content/Context;

    if-ne v0, p2, :cond_1

    iget-object p2, p1, Lp/g;->A:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Lp/g$a;->M:Landroidx/lifecycle/Lifecycle;

    iget-object p2, p1, Lp/g;->B:Lq/f;

    iput-object p2, p0, Lp/g$a;->N:Lq/f;

    iget p1, p1, Lp/g;->C:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lp/g$a;->M:Landroidx/lifecycle/Lifecycle;

    iput-object p1, p0, Lp/g$a;->N:Lq/f;

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lp/g$a;->O:I

    return-void
.end method


# virtual methods
.method public final a()Lp/g;
    .locals 71

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lp/g$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, v0, Lp/g$a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lp/i;->a:Lp/i;

    .line 10
    .line 11
    :cond_0
    move-object v3, v1

    .line 12
    iget-object v4, v0, Lp/g$a;->d:Lr/a;

    .line 13
    .line 14
    iget-object v5, v0, Lp/g$a;->e:Lp/g$b;

    .line 15
    .line 16
    iget-object v6, v0, Lp/g$a;->f:Ln/b$a;

    .line 17
    .line 18
    iget-object v7, v0, Lp/g$a;->g:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, v0, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 25
    .line 26
    iget-object v1, v1, Lp/a;->g:Landroid/graphics/Bitmap$Config;

    .line 27
    .line 28
    :cond_1
    move-object v8, v1

    .line 29
    iget-object v9, v0, Lp/g$a;->i:Landroid/graphics/ColorSpace;

    .line 30
    .line 31
    iget v1, v0, Lp/g$a;->j:I

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 36
    .line 37
    iget v1, v1, Lp/a;->f:I

    .line 38
    .line 39
    :cond_2
    move v10, v1

    .line 40
    iget-object v11, v0, Lp/g$a;->k:Ll9/g;

    .line 41
    .line 42
    iget-object v12, v0, Lp/g$a;->l:Lg/g$a;

    .line 43
    .line 44
    iget-object v13, v0, Lp/g$a;->m:Ljava/util/List;

    .line 45
    .line 46
    iget-object v1, v0, Lp/g$a;->n:Lt/c$a;

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 51
    .line 52
    iget-object v1, v1, Lp/a;->e:Lt/c$a;

    .line 53
    .line 54
    :cond_3
    move-object v14, v1

    .line 55
    iget-object v15, v0, Lp/g$a;->o:Lrc/q$a;

    .line 56
    .line 57
    if-nez v15, :cond_4

    .line 58
    .line 59
    const/4 v15, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {v15}, Lrc/q$a;->c()Lrc/q;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    :goto_0
    if-nez v15, :cond_5

    .line 66
    .line 67
    sget-object v15, Lu/c;->c:Lrc/q;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    sget-object v16, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 71
    .line 72
    :goto_1
    iget-object v1, v0, Lp/g$a;->p:Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    if-nez v1, :cond_6

    .line 75
    .line 76
    move-object/from16 v17, v15

    .line 77
    .line 78
    const/4 v15, 0x0

    .line 79
    goto :goto_2

    .line 80
    :cond_6
    move-object/from16 v17, v15

    .line 81
    .line 82
    new-instance v15, Lp/o;

    .line 83
    .line 84
    invoke-static {v1}, Lc5/w;->H(Ljava/util/Map;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v15, v1}, Lp/o;-><init>(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    if-nez v15, :cond_7

    .line 92
    .line 93
    sget-object v1, Lp/o;->b:Lp/o;

    .line 94
    .line 95
    move-object/from16 v18, v1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    move-object/from16 v18, v15

    .line 99
    .line 100
    :goto_3
    iget-boolean v15, v0, Lp/g$a;->q:Z

    .line 101
    .line 102
    iget-object v1, v0, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 103
    .line 104
    if-nez v1, :cond_8

    .line 105
    .line 106
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 107
    .line 108
    iget-boolean v1, v1, Lp/a;->h:Z

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    :goto_4
    move/from16 v19, v1

    .line 116
    .line 117
    iget-object v1, v0, Lp/g$a;->s:Ljava/lang/Boolean;

    .line 118
    .line 119
    if-nez v1, :cond_9

    .line 120
    .line 121
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 122
    .line 123
    iget-boolean v1, v1, Lp/a;->i:Z

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    :goto_5
    move/from16 v20, v1

    .line 131
    .line 132
    iget-boolean v1, v0, Lp/g$a;->t:Z

    .line 133
    .line 134
    move/from16 v21, v1

    .line 135
    .line 136
    iget v1, v0, Lp/g$a;->u:I

    .line 137
    .line 138
    if-nez v1, :cond_a

    .line 139
    .line 140
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 141
    .line 142
    iget v1, v1, Lp/a;->m:I

    .line 143
    .line 144
    :cond_a
    move/from16 v22, v1

    .line 145
    .line 146
    iget v1, v0, Lp/g$a;->v:I

    .line 147
    .line 148
    if-nez v1, :cond_b

    .line 149
    .line 150
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 151
    .line 152
    iget v1, v1, Lp/a;->n:I

    .line 153
    .line 154
    :cond_b
    move/from16 v23, v1

    .line 155
    .line 156
    iget v1, v0, Lp/g$a;->w:I

    .line 157
    .line 158
    if-nez v1, :cond_c

    .line 159
    .line 160
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 161
    .line 162
    iget v1, v1, Lp/a;->o:I

    .line 163
    .line 164
    :cond_c
    move/from16 v24, v1

    .line 165
    .line 166
    iget-object v1, v0, Lp/g$a;->x:Lnc/y;

    .line 167
    .line 168
    if-nez v1, :cond_d

    .line 169
    .line 170
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 171
    .line 172
    iget-object v1, v1, Lp/a;->a:Lnc/y;

    .line 173
    .line 174
    :cond_d
    move-object/from16 v25, v1

    .line 175
    .line 176
    iget-object v1, v0, Lp/g$a;->y:Lnc/y;

    .line 177
    .line 178
    if-nez v1, :cond_e

    .line 179
    .line 180
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 181
    .line 182
    iget-object v1, v1, Lp/a;->b:Lnc/y;

    .line 183
    .line 184
    :cond_e
    move-object/from16 v26, v1

    .line 185
    .line 186
    iget-object v1, v0, Lp/g$a;->z:Lnc/y;

    .line 187
    .line 188
    if-nez v1, :cond_f

    .line 189
    .line 190
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 191
    .line 192
    iget-object v1, v1, Lp/a;->c:Lnc/y;

    .line 193
    .line 194
    :cond_f
    move-object/from16 v27, v1

    .line 195
    .line 196
    iget-object v1, v0, Lp/g$a;->A:Lnc/y;

    .line 197
    .line 198
    if-nez v1, :cond_10

    .line 199
    .line 200
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 201
    .line 202
    iget-object v1, v1, Lp/a;->d:Lnc/y;

    .line 203
    .line 204
    :cond_10
    move-object/from16 v28, v1

    .line 205
    .line 206
    iget-object v1, v0, Lp/g$a;->a:Landroid/content/Context;

    .line 207
    .line 208
    move/from16 v29, v15

    .line 209
    .line 210
    iget-object v15, v0, Lp/g$a;->J:Landroidx/lifecycle/Lifecycle;

    .line 211
    .line 212
    if-nez v15, :cond_15

    .line 213
    .line 214
    iget-object v15, v0, Lp/g$a;->M:Landroidx/lifecycle/Lifecycle;

    .line 215
    .line 216
    if-nez v15, :cond_15

    .line 217
    .line 218
    iget-object v15, v0, Lp/g$a;->d:Lr/a;

    .line 219
    .line 220
    move-object/from16 v30, v14

    .line 221
    .line 222
    instance-of v14, v15, Lr/b;

    .line 223
    .line 224
    if-eqz v14, :cond_11

    .line 225
    .line 226
    check-cast v15, Lr/b;

    .line 227
    .line 228
    invoke-interface {v15}, Lr/b;->d()Landroid/widget/ImageView;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    goto :goto_6

    .line 237
    :cond_11
    move-object v14, v1

    .line 238
    :goto_6
    instance-of v15, v14, Landroidx/lifecycle/LifecycleOwner;

    .line 239
    .line 240
    if-eqz v15, :cond_12

    .line 241
    .line 242
    check-cast v14, Landroidx/lifecycle/LifecycleOwner;

    .line 243
    .line 244
    invoke-interface {v14}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    goto :goto_7

    .line 249
    :cond_12
    instance-of v15, v14, Landroid/content/ContextWrapper;

    .line 250
    .line 251
    if-nez v15, :cond_14

    .line 252
    .line 253
    const/4 v14, 0x0

    .line 254
    :goto_7
    if-nez v14, :cond_13

    .line 255
    .line 256
    sget-object v14, Lp/f;->a:Lp/f;

    .line 257
    .line 258
    :cond_13
    move-object/from16 v31, v14

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_14
    check-cast v14, Landroid/content/ContextWrapper;

    .line 262
    .line 263
    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    goto :goto_6

    .line 268
    :cond_15
    move-object/from16 v30, v14

    .line 269
    .line 270
    move-object/from16 v31, v15

    .line 271
    .line 272
    :goto_8
    iget-object v15, v0, Lp/g$a;->K:Lq/f;

    .line 273
    .line 274
    if-nez v15, :cond_1b

    .line 275
    .line 276
    iget-object v14, v0, Lp/g$a;->N:Lq/f;

    .line 277
    .line 278
    if-nez v14, :cond_1a

    .line 279
    .line 280
    iget-object v14, v0, Lp/g$a;->d:Lr/a;

    .line 281
    .line 282
    move-object/from16 v41, v13

    .line 283
    .line 284
    instance-of v13, v14, Lr/b;

    .line 285
    .line 286
    if-eqz v13, :cond_19

    .line 287
    .line 288
    check-cast v14, Lr/b;

    .line 289
    .line 290
    invoke-interface {v14}, Lr/b;->d()Landroid/widget/ImageView;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    instance-of v13, v1, Landroid/widget/ImageView;

    .line 295
    .line 296
    if-eqz v13, :cond_18

    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 299
    .line 300
    .line 301
    move-result-object v13

    .line 302
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 303
    .line 304
    if-eq v13, v14, :cond_17

    .line 305
    .line 306
    sget-object v14, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 307
    .line 308
    if-ne v13, v14, :cond_16

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_16
    const/4 v13, 0x0

    .line 312
    goto :goto_a

    .line 313
    :cond_17
    :goto_9
    const/4 v13, 0x1

    .line 314
    :goto_a
    if-eqz v13, :cond_18

    .line 315
    .line 316
    sget-object v1, Lq/e;->c:Lq/e;

    .line 317
    .line 318
    new-instance v13, Lq/c;

    .line 319
    .line 320
    invoke-direct {v13, v1}, Lq/c;-><init>(Lq/e;)V

    .line 321
    .line 322
    .line 323
    goto :goto_b

    .line 324
    :cond_18
    new-instance v13, Lq/d;

    .line 325
    .line 326
    const/4 v14, 0x1

    .line 327
    invoke-direct {v13, v1, v14}, Lq/d;-><init>(Landroid/view/View;Z)V

    .line 328
    .line 329
    .line 330
    goto :goto_b

    .line 331
    :cond_19
    new-instance v13, Lq/b;

    .line 332
    .line 333
    invoke-direct {v13, v1}, Lq/b;-><init>(Landroid/content/Context;)V

    .line 334
    .line 335
    .line 336
    :goto_b
    move-object/from16 v42, v13

    .line 337
    .line 338
    goto :goto_c

    .line 339
    :cond_1a
    move-object/from16 v41, v13

    .line 340
    .line 341
    move-object/from16 v42, v14

    .line 342
    .line 343
    goto :goto_c

    .line 344
    :cond_1b
    move-object/from16 v41, v13

    .line 345
    .line 346
    move-object/from16 v42, v15

    .line 347
    .line 348
    :goto_c
    iget v1, v0, Lp/g$a;->L:I

    .line 349
    .line 350
    if-nez v1, :cond_23

    .line 351
    .line 352
    iget v1, v0, Lp/g$a;->O:I

    .line 353
    .line 354
    if-nez v1, :cond_23

    .line 355
    .line 356
    instance-of v1, v15, Lq/g;

    .line 357
    .line 358
    if-eqz v1, :cond_1c

    .line 359
    .line 360
    check-cast v15, Lq/g;

    .line 361
    .line 362
    goto :goto_d

    .line 363
    :cond_1c
    const/4 v15, 0x0

    .line 364
    :goto_d
    if-nez v15, :cond_1d

    .line 365
    .line 366
    const/4 v1, 0x0

    .line 367
    goto :goto_e

    .line 368
    :cond_1d
    invoke-interface {v15}, Lq/g;->c()Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    :goto_e
    if-nez v1, :cond_20

    .line 373
    .line 374
    iget-object v1, v0, Lp/g$a;->d:Lr/a;

    .line 375
    .line 376
    instance-of v13, v1, Lr/b;

    .line 377
    .line 378
    if-eqz v13, :cond_1e

    .line 379
    .line 380
    check-cast v1, Lr/b;

    .line 381
    .line 382
    goto :goto_f

    .line 383
    :cond_1e
    const/4 v1, 0x0

    .line 384
    :goto_f
    if-nez v1, :cond_1f

    .line 385
    .line 386
    const/4 v1, 0x0

    .line 387
    goto :goto_10

    .line 388
    :cond_1f
    invoke-interface {v1}, Lr/b;->d()Landroid/widget/ImageView;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    :cond_20
    :goto_10
    instance-of v13, v1, Landroid/widget/ImageView;

    .line 393
    .line 394
    const/4 v14, 0x2

    .line 395
    if-eqz v13, :cond_22

    .line 396
    .line 397
    check-cast v1, Landroid/widget/ImageView;

    .line 398
    .line 399
    sget-object v13, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 400
    .line 401
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    if-nez v1, :cond_21

    .line 406
    .line 407
    const/4 v1, -0x1

    .line 408
    goto :goto_11

    .line 409
    :cond_21
    sget-object v13, Lu/c$a;->a:[I

    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    aget v1, v13, v1

    .line 416
    .line 417
    :goto_11
    const/4 v13, 0x1

    .line 418
    if-eq v1, v13, :cond_22

    .line 419
    .line 420
    if-eq v1, v14, :cond_22

    .line 421
    .line 422
    const/4 v15, 0x3

    .line 423
    if-eq v1, v15, :cond_22

    .line 424
    .line 425
    const/4 v15, 0x4

    .line 426
    if-eq v1, v15, :cond_22

    .line 427
    .line 428
    const/4 v14, 0x1

    .line 429
    :cond_22
    move/from16 v43, v14

    .line 430
    .line 431
    goto :goto_12

    .line 432
    :cond_23
    move/from16 v43, v1

    .line 433
    .line 434
    :goto_12
    iget-object v1, v0, Lp/g$a;->B:Lp/l$a;

    .line 435
    .line 436
    if-nez v1, :cond_24

    .line 437
    .line 438
    const/4 v1, 0x0

    .line 439
    goto :goto_13

    .line 440
    :cond_24
    new-instance v13, Lp/l;

    .line 441
    .line 442
    iget-object v1, v1, Lp/l$a;->a:Ljava/util/LinkedHashMap;

    .line 443
    .line 444
    invoke-static {v1}, Lc5/w;->H(Ljava/util/Map;)Ljava/util/Map;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-direct {v13, v1}, Lp/l;-><init>(Ljava/util/Map;)V

    .line 449
    .line 450
    .line 451
    move-object v1, v13

    .line 452
    :goto_13
    if-nez v1, :cond_25

    .line 453
    .line 454
    sget-object v1, Lp/l;->b:Lp/l;

    .line 455
    .line 456
    :cond_25
    move-object/from16 v44, v1

    .line 457
    .line 458
    iget-object v1, v0, Lp/g$a;->C:Ln/b$a;

    .line 459
    .line 460
    move-object/from16 v32, v1

    .line 461
    .line 462
    iget-object v1, v0, Lp/g$a;->D:Ljava/lang/Integer;

    .line 463
    .line 464
    move-object/from16 v33, v1

    .line 465
    .line 466
    iget-object v1, v0, Lp/g$a;->E:Landroid/graphics/drawable/Drawable;

    .line 467
    .line 468
    move-object/from16 v34, v1

    .line 469
    .line 470
    iget-object v1, v0, Lp/g$a;->F:Ljava/lang/Integer;

    .line 471
    .line 472
    move-object/from16 v35, v1

    .line 473
    .line 474
    iget-object v1, v0, Lp/g$a;->G:Landroid/graphics/drawable/Drawable;

    .line 475
    .line 476
    move-object/from16 v36, v1

    .line 477
    .line 478
    iget-object v1, v0, Lp/g$a;->H:Ljava/lang/Integer;

    .line 479
    .line 480
    move-object/from16 v37, v1

    .line 481
    .line 482
    iget-object v1, v0, Lp/g$a;->I:Landroid/graphics/drawable/Drawable;

    .line 483
    .line 484
    move-object/from16 v38, v1

    .line 485
    .line 486
    new-instance v45, Lp/b;

    .line 487
    .line 488
    move-object/from16 v39, v45

    .line 489
    .line 490
    iget-object v1, v0, Lp/g$a;->J:Landroidx/lifecycle/Lifecycle;

    .line 491
    .line 492
    iget-object v13, v0, Lp/g$a;->K:Lq/f;

    .line 493
    .line 494
    iget v14, v0, Lp/g$a;->L:I

    .line 495
    .line 496
    iget-object v15, v0, Lp/g$a;->x:Lnc/y;

    .line 497
    .line 498
    move-object/from16 v16, v12

    .line 499
    .line 500
    iget-object v12, v0, Lp/g$a;->y:Lnc/y;

    .line 501
    .line 502
    move-object/from16 v61, v11

    .line 503
    .line 504
    iget-object v11, v0, Lp/g$a;->z:Lnc/y;

    .line 505
    .line 506
    move/from16 v62, v10

    .line 507
    .line 508
    iget-object v10, v0, Lp/g$a;->A:Lnc/y;

    .line 509
    .line 510
    move-object/from16 v63, v9

    .line 511
    .line 512
    iget-object v9, v0, Lp/g$a;->n:Lt/c$a;

    .line 513
    .line 514
    move-object/from16 v64, v8

    .line 515
    .line 516
    iget v8, v0, Lp/g$a;->j:I

    .line 517
    .line 518
    move-object/from16 v65, v7

    .line 519
    .line 520
    iget-object v7, v0, Lp/g$a;->h:Landroid/graphics/Bitmap$Config;

    .line 521
    .line 522
    move-object/from16 v66, v6

    .line 523
    .line 524
    iget-object v6, v0, Lp/g$a;->r:Ljava/lang/Boolean;

    .line 525
    .line 526
    move-object/from16 v67, v5

    .line 527
    .line 528
    iget-object v5, v0, Lp/g$a;->s:Ljava/lang/Boolean;

    .line 529
    .line 530
    move-object/from16 v68, v4

    .line 531
    .line 532
    iget v4, v0, Lp/g$a;->u:I

    .line 533
    .line 534
    move-object/from16 v69, v3

    .line 535
    .line 536
    iget v3, v0, Lp/g$a;->v:I

    .line 537
    .line 538
    move-object/from16 v70, v2

    .line 539
    .line 540
    iget v2, v0, Lp/g$a;->w:I

    .line 541
    .line 542
    move-object/from16 v46, v1

    .line 543
    .line 544
    move-object/from16 v47, v13

    .line 545
    .line 546
    move/from16 v48, v14

    .line 547
    .line 548
    move-object/from16 v49, v15

    .line 549
    .line 550
    move-object/from16 v50, v12

    .line 551
    .line 552
    move-object/from16 v51, v11

    .line 553
    .line 554
    move-object/from16 v52, v10

    .line 555
    .line 556
    move-object/from16 v53, v9

    .line 557
    .line 558
    move/from16 v54, v8

    .line 559
    .line 560
    move-object/from16 v55, v7

    .line 561
    .line 562
    move-object/from16 v56, v6

    .line 563
    .line 564
    move-object/from16 v57, v5

    .line 565
    .line 566
    move/from16 v58, v4

    .line 567
    .line 568
    move/from16 v59, v3

    .line 569
    .line 570
    move/from16 v60, v2

    .line 571
    .line 572
    invoke-direct/range {v45 .. v60}, Lp/b;-><init>(Landroidx/lifecycle/Lifecycle;Lq/f;ILnc/y;Lnc/y;Lnc/y;Lnc/y;Lt/c$a;ILandroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;III)V

    .line 573
    .line 574
    .line 575
    iget-object v1, v0, Lp/g$a;->b:Lp/a;

    .line 576
    .line 577
    move-object/from16 v40, v1

    .line 578
    .line 579
    new-instance v45, Lp/g;

    .line 580
    .line 581
    move-object/from16 v1, v45

    .line 582
    .line 583
    move-object/from16 v2, v70

    .line 584
    .line 585
    move-object/from16 v3, v69

    .line 586
    .line 587
    move-object/from16 v4, v68

    .line 588
    .line 589
    move-object/from16 v5, v67

    .line 590
    .line 591
    move-object/from16 v6, v66

    .line 592
    .line 593
    move-object/from16 v7, v65

    .line 594
    .line 595
    move-object/from16 v8, v64

    .line 596
    .line 597
    move-object/from16 v9, v63

    .line 598
    .line 599
    move/from16 v10, v62

    .line 600
    .line 601
    move-object/from16 v11, v61

    .line 602
    .line 603
    move-object/from16 v12, v16

    .line 604
    .line 605
    move-object/from16 v13, v41

    .line 606
    .line 607
    move-object/from16 v14, v30

    .line 608
    .line 609
    move-object/from16 v15, v17

    .line 610
    .line 611
    move-object/from16 v16, v18

    .line 612
    .line 613
    move/from16 v17, v29

    .line 614
    .line 615
    move/from16 v18, v19

    .line 616
    .line 617
    move/from16 v19, v20

    .line 618
    .line 619
    move/from16 v20, v21

    .line 620
    .line 621
    move/from16 v21, v22

    .line 622
    .line 623
    move/from16 v22, v23

    .line 624
    .line 625
    move/from16 v23, v24

    .line 626
    .line 627
    move-object/from16 v24, v25

    .line 628
    .line 629
    move-object/from16 v25, v26

    .line 630
    .line 631
    move-object/from16 v26, v27

    .line 632
    .line 633
    move-object/from16 v27, v28

    .line 634
    .line 635
    move-object/from16 v28, v31

    .line 636
    .line 637
    move-object/from16 v29, v42

    .line 638
    .line 639
    move/from16 v30, v43

    .line 640
    .line 641
    move-object/from16 v31, v44

    .line 642
    .line 643
    invoke-direct/range {v1 .. v40}, Lp/g;-><init>(Landroid/content/Context;Ljava/lang/Object;Lr/a;Lp/g$b;Ln/b$a;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;ILl9/g;Lg/g$a;Ljava/util/List;Lt/c$a;Lrc/q;Lp/o;ZZZZIIILnc/y;Lnc/y;Lnc/y;Lnc/y;Landroidx/lifecycle/Lifecycle;Lq/f;ILp/l;Ln/b$a;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lp/b;Lp/a;)V

    .line 644
    .line 645
    .line 646
    return-object v45
.end method

.method public final b()V
    .locals 3

    .line 1
    new-instance v0, Lt/a$a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lt/a$a;-><init>(II)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp/g$a;->n:Lt/c$a;

    .line 10
    .line 11
    return-void
.end method

.method public final c(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lp/g$a;->F:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-object p1, p0, Lp/g$a;->G:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final d(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lp/g$a;->D:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-object p1, p0, Lp/g$a;->E:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final e(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    new-instance v0, Lcoil/target/ImageViewTarget;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcoil/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lp/g$a;->d:Lr/a;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lp/g$a;->M:Landroidx/lifecycle/Lifecycle;

    .line 10
    .line 11
    iput-object p1, p0, Lp/g$a;->N:Lq/f;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lp/g$a;->O:I

    .line 15
    .line 16
    return-void
.end method
