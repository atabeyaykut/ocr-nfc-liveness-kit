.class public final Lp/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/graphics/Bitmap$Config;

.field public final c:Landroid/graphics/ColorSpace;

.field public final d:Lq/e;

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lrc/q;

.field public final k:Lp/o;

.field public final l:Lp/l;

.field public final m:I

.field public final n:I

.field public final o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lq/e;IZZZLjava/lang/String;Lrc/q;Lp/o;Lp/l;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lp/k;->b:Landroid/graphics/Bitmap$Config;

    iput-object p3, p0, Lp/k;->c:Landroid/graphics/ColorSpace;

    iput-object p4, p0, Lp/k;->d:Lq/e;

    iput p5, p0, Lp/k;->e:I

    iput-boolean p6, p0, Lp/k;->f:Z

    iput-boolean p7, p0, Lp/k;->g:Z

    iput-boolean p8, p0, Lp/k;->h:Z

    iput-object p9, p0, Lp/k;->i:Ljava/lang/String;

    iput-object p10, p0, Lp/k;->j:Lrc/q;

    iput-object p11, p0, Lp/k;->k:Lp/o;

    iput-object p12, p0, Lp/k;->l:Lp/l;

    iput p13, p0, Lp/k;->m:I

    iput p14, p0, Lp/k;->n:I

    iput p15, p0, Lp/k;->o:I

    return-void
.end method

.method public static a(Lp/k;Landroid/graphics/Bitmap$Config;)Lp/k;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lp/k;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, v0, Lp/k;->c:Landroid/graphics/ColorSpace;

    .line 6
    .line 7
    iget-object v4, v0, Lp/k;->d:Lq/e;

    .line 8
    .line 9
    iget v5, v0, Lp/k;->e:I

    .line 10
    .line 11
    iget-boolean v6, v0, Lp/k;->f:Z

    .line 12
    .line 13
    iget-boolean v7, v0, Lp/k;->g:Z

    .line 14
    .line 15
    iget-boolean v8, v0, Lp/k;->h:Z

    .line 16
    .line 17
    iget-object v9, v0, Lp/k;->i:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v10, v0, Lp/k;->j:Lrc/q;

    .line 20
    .line 21
    iget-object v11, v0, Lp/k;->k:Lp/o;

    .line 22
    .line 23
    iget-object v12, v0, Lp/k;->l:Lp/l;

    .line 24
    .line 25
    iget v13, v0, Lp/k;->m:I

    .line 26
    .line 27
    iget v14, v0, Lp/k;->n:I

    .line 28
    .line 29
    iget v15, v0, Lp/k;->o:I

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v16, Lp/k;

    .line 35
    .line 36
    move-object/from16 v0, v16

    .line 37
    .line 38
    move-object/from16 v2, p1

    .line 39
    .line 40
    invoke-direct/range {v0 .. v15}, Lp/k;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lq/e;IZZZLjava/lang/String;Lrc/q;Lp/o;Lp/l;III)V

    .line 41
    .line 42
    .line 43
    return-object v16
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp/k;

    if-eqz v1, :cond_2

    check-cast p1, Lp/k;

    iget-object v1, p1, Lp/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lp/k;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp/k;->b:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lp/k;->b:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lp/k;->c:Landroid/graphics/ColorSpace;

    iget-object v2, p1, Lp/k;->c:Landroid/graphics/ColorSpace;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lp/k;->d:Lq/e;

    iget-object v2, p1, Lp/k;->d:Lq/e;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lp/k;->e:I

    iget v2, p1, Lp/k;->e:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lp/k;->f:Z

    iget-boolean v2, p1, Lp/k;->f:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lp/k;->g:Z

    iget-boolean v2, p1, Lp/k;->g:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lp/k;->h:Z

    iget-boolean v2, p1, Lp/k;->h:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lp/k;->i:Ljava/lang/String;

    iget-object v2, p1, Lp/k;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp/k;->j:Lrc/q;

    iget-object v2, p1, Lp/k;->j:Lrc/q;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp/k;->k:Lp/o;

    iget-object v2, p1, Lp/k;->k:Lp/o;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp/k;->l:Lp/l;

    iget-object v2, p1, Lp/k;->l:Lp/l;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lp/k;->m:I

    iget v2, p1, Lp/k;->m:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lp/k;->n:I

    iget v2, p1, Lp/k;->n:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lp/k;->o:I

    iget p1, p1, Lp/k;->o:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lp/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp/k;->b:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Lp/k;->c:Landroid/graphics/ColorSpace;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lp/k;->d:Lq/e;

    invoke-virtual {v2}, Lq/e;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lp/k;->e:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lp/k;->f:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lp/k;->g:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lp/k;->h:Z

    if-eqz v2, :cond_3

    const/16 v3, 0x4cf

    :cond_3
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lp/k;->i:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lp/k;->j:Lrc/q;

    invoke-virtual {v0}, Lrc/q;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp/k;->k:Lp/o;

    invoke-virtual {v1}, Lp/o;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lp/k;->l:Lp/l;

    invoke-virtual {v0}, Lp/l;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp/k;->m:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lp/k;->n:I

    invoke-static {v0}, Lg/d;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp/k;->o:I

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
